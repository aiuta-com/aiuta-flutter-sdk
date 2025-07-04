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

extension AiutaPlugin {
    enum Actions {
        struct AddToCartAction: Encodable {
            let type: Method = .addToCartClick
            let productId: String
        }

        struct SetInWishlistAction: Encodable {
            let type: Method = .addToWishlistClick
            let productId: String
            let isInWishlist: Bool
        }

        struct RequestJwtAction: Encodable {
            let type: Method = .requestJwt
            let params: String
        }
        
        struct CompleteOnboardingAction: Encodable {
            let type: Method = .completeOnboarding
        }

        struct ObtainUserConsentAction: Encodable {
            let type: Method = .obtainUserConsentsIds
            let consentIds: [String]
        }

        struct AddUploadedImagesAction: Encodable {
            let type: Method = .addUploadedImages
            let uploadedImages: [Aiuta.Image.Input]
        }

        struct DeleteUploadedImagesAction: Encodable {
            let type: Method = .deleteUploadedImages
            let uploadedImages: [Aiuta.Image.Input]
        }

        struct SelectUploadedImageAction: Encodable {
            let type: Method = .selectUploadedImage
            let uploadedImage: Aiuta.Image.Input
        }

        struct AddGeneratedImagesAction: Encodable {
            let type: Method = .addGeneratedImages
            let generatedImages: [Aiuta.Image.Generated]
        }

        struct DeleteGeneratedImagesAction: Encodable {
            let type: Method = .deleteGeneratedImages
            let generatedImages: [Aiuta.Image.Generated]
        }
        
        struct GetShareTextAction: Encodable {
            let type: Method = .getShareText
            let productIds: [String]
        }
    }
}

extension AiutaPlugin.Actions {
    enum Method: String, Codable {
        case addToCartClick, addToWishlistClick
        case requestJwt
        case completeOnboarding,
             obtainUserConsentsIds,
             addUploadedImages,
             selectUploadedImage,
             deleteUploadedImages,
             addGeneratedImages,
             deleteGeneratedImages,
             getShareText
    }
}

extension AiutaPlugin.Actions {
    struct Notification: Decodable, Error {
        let id: String
        let type: Method
    }
}
