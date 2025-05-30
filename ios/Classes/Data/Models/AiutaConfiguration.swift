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
    struct Configuration: Decodable {
        static let key: String = "configuration"

        let mode: PresentationMode
        let authentication: Authentication
        let toggles: Toggles
        let dataProvider: DataProvider?
        let theme: Theme?
        let language: Language
    }
}

extension AiutaPlugin.Configuration {
    enum PresentationMode: String, Decodable {
        case fullScreen, bottomSheet, pageSheet
    }
}

extension AiutaPlugin.Configuration {
    struct Authentication: Decodable {
        enum Method: String, Decodable {
            case apiKey, jwt
        }

        let mode: Method
        let subscriptionId: String?
        let apiKey: String?
    }
}

extension AiutaPlugin.Configuration {
    struct Toggles: Decodable {
        let isHistoryAvailable: Bool
        let isWishlistAvailable: Bool
        let isPreOnboardingAvailable: Bool
        let isShareAvailable: Bool
        let isBackgroundExecutionAllowed: Bool
    }
}

extension AiutaPlugin.Configuration {
    struct DataProvider: Decodable {
        let isUserConsentObtained: Bool
        let uploadedImages: [Aiuta.Image]
        let generatedImages: [Aiuta.Image]
    }
}

extension AiutaPlugin.Configuration {
    struct Theme: Decodable {
        let colors: Colors?
        let gradients: Gradients?
        let typography: Typography?
        let icons: Icons?
        let shapes: Shapes?
        let dimensions: Dimensions?
        let watermark: Watermark?
        let images: Images?
        let toggles: ThemeToggles?
    }
}

extension AiutaPlugin.Configuration.Theme {
    struct Colors: Decodable {
        let brand: String
        let accent: String
        let aiuta: String

        let primary: String
        let secondary: String
        let tertiary: String
        let onDark: String

        let error: String
        let onError: String

        let background: String
        let neutral: String
        let neutral2: String
        let neutral3: String
    }
}

extension AiutaPlugin.Configuration.Theme {
    struct Gradients: Decodable {
        let loadingAnimation: [String]
        let tryOnButtonBackground: [String]
    }
}

extension AiutaPlugin.Configuration.Theme {
    enum FontWeight: String, Decodable {
        case thin, extralight, light, normal, medium, semibold, bold, extrabold, black
    }

    struct CustomFont: Decodable {
        let filePath: String
        let family: String
        let weight: FontWeight
    }

    struct TextStyle: Decodable {
        let fontFamily: String
        let fontSize: Double
        let fontWeight: FontWeight
        let letterSpacing: Double
        let lineHeight: Double
    }

    struct Typography: Decodable {
        let fonts: [CustomFont]

        let titleXL: TextStyle
        let welcomeText: TextStyle
        let titleL: TextStyle
        let titleM: TextStyle
        let navbar: TextStyle
        let regular: TextStyle
        let button: TextStyle
        let smallButton: TextStyle
        let cells: TextStyle
        let chips: TextStyle
        let productName: TextStyle
        let price: TextStyle
        let brandName: TextStyle
        let description: TextStyle
    }
}

extension AiutaPlugin.Configuration.Theme {
    struct Icon: Decodable {
        let path: String
        let shouldRenderAsIs: Bool?
    }

    struct Icons: Decodable {
        let preonboarding82: Icon
        let error36: Icon
        let imageError36: Icon
        let like36: Icon
        let dislike36: Icon
        let back24: Icon
        let camera24: Icon
        let checkCorrect24: Icon
        let checkNotCorrect24: Icon
        let close24: Icon
        let trash24: Icon
        let takePhoto24: Icon
        let history24: Icon
        let photoLibrary24: Icon
        let share24: Icon
        let wishlist24: Icon
        let wishlistFill24: Icon
        let check20: Icon
        let info20: Icon
        let magic20: Icon
        let lock16: Icon
        let arrow16: Icon
        let loading14: Icon
    }
}

extension AiutaPlugin.Configuration.Theme {
    struct Shapes: Decodable {
        let mainImage: Int
        let onboardingImage: Int
        let previewImage: Int
        let bottomSheet: Int
        let buttonL: Int
        let buttonM: Int
    }
}

extension AiutaPlugin.Configuration.Theme {
    struct Dimensions: Decodable {
        let grabberPaddingTop: Double?
        let grabberWidth: Double?
    }
}

extension AiutaPlugin.Configuration.Theme {
    struct Watermark: Decodable {
        let path: String
    }
}

extension AiutaPlugin.Configuration.Theme {
    struct Images: Decodable {
        let preonboardingImagePath: String?
        let onboardingImages: OnboadringImages?
        let selectorEmptyImagePath: String?
        let feedbackThanksImagePath: String?
    }

    struct OnboadringImages: Decodable {
        let onboardingTryOnMainImage1Path: String?
        let onboardingTryOnMainImage2Path: String?
        let onboardingTryOnMainImage3Path: String?
        let onboardingTryOnItemImage1Path: String?
        let onboardingTryOnItemImage2Path: String?
        let onboardingTryOnItemImage3Path: String?
        let onboardingBestResulBadImage1Path: String?
        let onboardingBestResulBadImage2Path: String?
        let onboardingBestResulGoodImage1Path: String?
        let onboardingBestResulGoodImage2Path: String?
    }
}

extension AiutaPlugin.Configuration.Theme {
    struct ThemeToggles: Decodable {
        let isOnboardingAppBarExtended: Bool
        let isMainAppbarReversed: Bool
        let isShadowsReduced: Bool
        let isDelimitersExtended: Bool
        let isProductFirstImageExtendedPaddingApplied: Bool
        let isBlurOutlinesEnabled: Bool
    }
}

extension AiutaPlugin.Configuration {
    enum Language: Decodable {
        case standard(StandardLanguage)
        case custom(CustomLanguage)

        init(from decoder: Decoder) throws {
            let discriminator = try Discriminator(from: decoder)
            switch discriminator.mode {
                case .standard: self = .standard(try StandardLanguage(from: decoder))
                case .custom: self = .custom(try CustomLanguage(from: decoder))
            }
        }
    }

    private struct Discriminator: Decodable {
        enum Mode: String, Decodable {
            case standard, custom
        }

        let mode: Mode
    }

    struct StandardLanguage: Decodable {
        enum Language: String, Decodable {
            case english, turkish, russian
        }

        let language: Language
        let brand: String
        let termsOfServiceUrl: String
        let privacyPolicyUrl: String
        let onboardingPageConsentSupplementaryPoints: [String]
    }

    struct CustomLanguage: Decodable, AiutaSdkLanguage {
        let tryOn: String
        let close: String
        let cancel: String
        let addToWish: String
        let addToCart: String
        let share: String
        let tryAgain: String
        let defaultErrorMessage: String
        let appBarVirtualTryOn: String
        let appBarHistory: String
        let appBarSelect: String
        let preOnboardingTitle: String
        let preOnboardingSubtitle: String
        let preOnboardingButton: String
        let onboardingAppbarTryonPage: String
        let onboardingPageTryonTopic: String
        let onboardingPageTryonSubtopic: String
        let onboardingAppbarBestResultPage: String
        let onboardingPageBestResultTopic: String
        let onboardingPageBestResultSubtopic: String
        let onboardingAppbarConsentPage: String
        let onboardingPageConsentTopic: String
        let onboardingPageConsentBody: String
        let onboardingPageConsentAgreePoint: String
        let onboardingPageConsentSupplementaryPoints: [String]
        let onboardingPageConsentFooter: String?
        let onboardingButtonNext: String
        let onboardingButtonStart: String
        let imageSelectorUploadButton: String
        let imageSelectorChangeButton: String
        let imageSelectorProtectionPoint: String
        let imageSelectorPoweredByAiuta: String
        let loadingUploadingImage: String
        let loadingScanningBody: String
        let loadingGeneratingOutfit: String
        let dialogInvalidImageDescription: String
        let generationResultMoreTitle: String
        let generationResultMoreSubtitle: String
        let historySelectorEnableButtonSelectAll: String
        let historySelectorEnableButtonUnselectAll: String
        let pickerSheetTakePhoto: String
        let pickerSheetChooseLibrary: String
        let uploadsHistorySheetPreviously: String
        let uploadsHistorySheetUploadNewButton: String
        let feedbackSheetTitle: String
        let feedbackSheetOptions: [String]
        let feedbackSheetSkip: String
        let feedbackSheetSend: String
        let feedbackSheetExtraOption: String
        let feedbackSheetExtraOptionTitle: String
        let feedbackSheetSendFeedback: String
        let feedbackSheetGratitude: String
        let fitDisclaimerTitle: String
        let fitDisclaimerBody: String
        let dialogCameraPermissionTitle: String
        let dialogCameraPermissionDescription: String
        let dialogCameraPermissionConfirmButton: String
    }
}
