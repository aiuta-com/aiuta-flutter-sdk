// Copyright 2024 Aiuta USA, Inc
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import AiutaSdk

final class AiutaHostImpl: AiutaHost {
    @available(iOS 13.0.0, *)
    var jwtProvider: Aiuta.Auth.JwtProvider { self }

    var jwtResult: AiutaCompleter<String>? {
        didSet { oldValue?.cancel() }
    }

    var shareTextResult: AiutaCompleter<String>? {
        didSet { oldValue?.cancel() }
    }

    var isOnboardingCompleted = false
    var obtainedConsentsIds = Aiuta.Observable<[String]>([])
    var uploaded = Aiuta.Observable<[Aiuta.InputImage]>([])
    var generated = Aiuta.Observable<[Aiuta.GeneratedImage]>([])
    var wishlistProductIds = Aiuta.Observable<[String]>([])

    var deleteUploadedResults = [AiutaCompleter<Void>]()
    var deleteGeneratedResults = [AiutaCompleter<Void>]()

    private let jwtStreamer: AiutaJwtStreamer?
    private let actionsStreamer: AiutaActionsStreamer?
    private let dataActionsStreamer: AiutaDataActionsStreamer?
    private let analyticsStreamer: AiutaAnalyticsStreamer?

    init(with streamers: [AiutaStreamHandler]) {
        actionsStreamer = streamers.getHandler()
        jwtStreamer = streamers.getHandler()
        analyticsStreamer = streamers.getHandler()
        dataActionsStreamer = streamers.getHandler()
    }

    func handle(success: AiutaPlugin.Actions.Notification) {
        switch success.type {
            case .deleteUploadedImages:
                deleteUploadedResults.popLast()?.success()
            case .deleteGeneratedImages:
                deleteGeneratedResults.popLast()?.success()
            default: break
        }
    }

    func handle(error: AiutaPlugin.Actions.Notification) {
        switch error.type {
            case .deleteUploadedImages:
                deleteUploadedResults.popLast()?.failure(error)
            case .deleteGeneratedImages:
                deleteGeneratedResults.popLast()?.failure(error)
            default: break
        }
    }
}

@available(iOS 13.0.0, *)
@MainActor
extension AiutaHostImpl: Aiuta.Auth.JwtProvider {
    public func getJwt(requestParams params: [String: String]) async throws -> String {
        guard let data = try? JSONEncoder().encode(params),
              let request = String(data: data, encoding: .utf8) else {
            throw AiutaCompleter<String>.ErrorType.failed
        }
        let completer = AiutaCompleter<String>()
        jwtResult = completer
        jwtStreamer?.requestJwt(request)
        return try await completer.result
    }
}

// MARK: - Cart Handler

@available(iOS 13.0.0, *)
@MainActor extension AiutaHostImpl: Aiuta.Configuration.Features.TryOn.Cart.Handler {
    func addToCart(productId: String) async {
        actionsStreamer?.addToCart(productId: productId)
    }
}

// MARK: - Cart Outfit Handler

@available(iOS 13.0.0, *)
@MainActor extension AiutaHostImpl: Aiuta.Configuration.Features.TryOn.Cart.Outfit.Handler {
    func addToCartOutfit(productIds: [String]) {
        actionsStreamer?.addToCartOutfit(productIds: productIds)
    }
}

// MARK: - Analytics Handler

@available(iOS 13.0.0, *)
@MainActor extension AiutaHostImpl: Aiuta.Analytics.Handler {
    public func onAnalyticsEvent(_ event: Aiuta.Event) async {
        analyticsStreamer?.eventOccurred(event)
    }
}

// MARK: - Onboarding DataProvider

@available(iOS 13.0.0, *)
@MainActor extension AiutaHostImpl: Aiuta.Configuration.Features.Onboarding.DataProvider {
    func completeOnboarding() async {
        dataActionsStreamer?.completeOnboarding()
    }
}

// MARK: - Consent DataProvider

@available(iOS 13.0.0, *)
@MainActor extension AiutaHostImpl: Aiuta.Configuration.Features.Consent.Standalone.DataProvider {
    func obtain(consentsIds: [String]) async {
        dataActionsStreamer?.obtainUserConsent(consentsIds)
    }
}

// MARK: - ImagePicker UploadsHistory DataProvider

@available(iOS 13.0.0, *)
@MainActor extension AiutaHostImpl: Aiuta.Configuration.Features.ImagePicker.UploadsHistory.DataProvider {
    func add(uploaded images: [Aiuta.InputImage]) async throws {
        dataActionsStreamer?.addUploadedImages(images)
    }

    func select(uploaded image: Aiuta.InputImage) async throws {
        dataActionsStreamer?.selectUploadedImage(image)
    }

    func delete(uploaded images: [Aiuta.InputImage]) async throws {
        let completer = AiutaCompleter<Void>()
        deleteUploadedResults.insert(completer, at: 0)
        dataActionsStreamer?.deleteUploadedImages(images)
        try await completer.result
    }
}

// MARK: - TryOn GenerationsHistory DataProvider

@available(iOS 13.0.0, *)
@MainActor extension AiutaHostImpl: Aiuta.Configuration.Features.TryOn.GenerationsHistory.DataProvider {
    func add(generated images: [Aiuta.GeneratedImage]) async throws {
        let productIds = Array(Set(images.flatMap { $0.productIds }))
        dataActionsStreamer?.addGeneratedImages(images, productIds: productIds)
    }

    func delete(generated images: [Aiuta.GeneratedImage]) async throws {
        let completer = AiutaCompleter<Void>()
        deleteGeneratedResults.insert(completer, at: 0)
        dataActionsStreamer?.deleteGeneratedImages(images)
        try await completer.result
    }
}

// MARK: - Wishlist DataProvider

@available(iOS 13.0.0, *)
@MainActor extension AiutaHostImpl: Aiuta.Configuration.Features.Wishlist.DataProvider {
    func setProductInWishlist(productIds: [String], inWishlist: Bool) async {
        actionsStreamer?.set(productIds: productIds, isInWishlist: inWishlist)
    }
}

// MARK: - Share DataProvider

@available(iOS 13.0.0, *)
@MainActor extension AiutaHostImpl: Aiuta.Configuration.Features.Share.DataProvider {
    func getShareText(productIds: [String]) async throws -> String? {
        let completer = AiutaCompleter<String>()
        shareTextResult = completer
        dataActionsStreamer?.getShareText(productIds)
        let result = try await completer.result
        return result.isEmpty ? nil : result
    }
}
