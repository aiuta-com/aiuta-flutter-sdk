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
import Flutter

final class AiutaDataActionsStreamerImpl: AiutaStreamHandlerImpl, AiutaDataActionsStreamer {
    init(with messenger: FlutterBinaryMessenger) {
        super.init(with: messenger, name: "aiutaDataActionsHandler")
    }

    func completeOnboarding() {
        send(AiutaPlugin.Actions.CompleteOnboardingAction())
    }

    func obtainUserConsent(_ consentIds: [String]) {
        send(AiutaPlugin.Actions.ObtainUserConsentAction(consentIds: consentIds))
    }

    func addUploadedImages(_ images: [Aiuta.Image.Input]) {
        send(AiutaPlugin.Actions.AddUploadedImagesAction(uploadedImages: images))
    }

    func deleteUploadedImages(_ images: [Aiuta.Image.Input]) {
        send(AiutaPlugin.Actions.DeleteUploadedImagesAction(uploadedImages: images))
    }

    func selectUploadedImage(_ image: Aiuta.Image.Input) {
        send(AiutaPlugin.Actions.SelectUploadedImageAction(uploadedImage: image))
    }

    func addGeneratedImages(_ images: [Aiuta.Image.Generated]) {
        send(AiutaPlugin.Actions.AddGeneratedImagesAction(generatedImages: images))
    }

    func deleteGeneratedImages(_ images: [Aiuta.Image.Generated]) {
        send(AiutaPlugin.Actions.DeleteGeneratedImagesAction(generatedImages: images))
    }

    func getShareText(_ productIds: [String]) {
        send(AiutaPlugin.Actions.GetShareTextAction(productIds: productIds))
    }
}
