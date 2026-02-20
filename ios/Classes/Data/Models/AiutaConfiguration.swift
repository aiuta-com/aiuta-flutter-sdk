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
        let auth: Auth
        let userInterface: UserInterface
        let features: Features
        let analytics: Analytics?
        let debugSettings: DebugSettings
    }

    struct TextStyle: Decodable {
        let fontFamily: String
        let fontSize: Double
        let fontWeight: Font.Weight
        let letterSpacing: Double
        let lineHeight: Double
    }

    struct Font: Decodable {
        enum Weight: String, Decodable {
            case thin, extralight, light, normal, medium, semibold, bold, extrabold, black
        }

        let filePath: String
        let family: String
        let weight: Weight
    }

    struct Icon: Decodable {
        enum RenderMode: String, Decodable {
            case original, template
        }

        let path: String
        let renderMode: RenderMode
    }

    enum ComponentStyle: String, Decodable {
        case brand, contrast, contrastInverted, blurred, blurredWithOutline
    }
}

extension AiutaPlugin.Configuration {
    enum Auth: Decodable {
        case apiKey(ApiKeyAuth)
        case jwt(JwtAuth)

        enum CodingKeys: String, CodingKey {
            case mode
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let mode = try container.decode(String.self, forKey: .mode)

            switch mode {
                case "apiKey":
                    let apiKeyAuth = try ApiKeyAuth(from: decoder)
                    self = .apiKey(apiKeyAuth)
                case "jwt":
                    let jwtAuth = try JwtAuth(from: decoder)
                    self = .jwt(jwtAuth)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown auth mode: \(mode)")
                    )
            }
        }

        struct ApiKeyAuth: Decodable {
            let apiKey: String
        }

        struct JwtAuth: Decodable {
            let subscriptionId: String
            // getJwt function callback is excluded from JSON serialization
        }
    }
}

extension AiutaPlugin.Configuration {
    struct UserInterface: Decodable {
        let presentationStyle: Aiuta.Configuration.UserInterface.PresentationStyle
        let swipeToDismiss: Aiuta.Configuration.UserInterface.SwipeToDismissPolicy
        let theme: Theme
    }
}

extension AiutaPlugin.Configuration {
    struct Features: Decodable {
        let welcomeScreen: WelcomeScreenFeature?
        let onboarding: OnboardingFeature?
        let consent: ConsentFeature?
        let imagePicker: ImagePickerFeature
        let tryOn: TryOnFeature
        let share: ShareFeature?
        let wishlist: WishlistFeature?
    }
}

extension AiutaPlugin.Configuration {
    struct Analytics: Decodable {
        // handler is always null in JSON as it's a function reference
        // so we don't need to decode it
    }
}

extension AiutaPlugin.Configuration {
    struct DebugSettings: Decodable {
        enum ValidationPolicy: String, Decodable {
            case ignore, warning, fatal
        }

        let isLoggingEnabled: Bool
        let emptyStringsPolicy: ValidationPolicy
        let unavailableResourcesPolicy: ValidationPolicy
        let infoPlistDescriptionsPolicy: ValidationPolicy
        let listSizePolicy: ValidationPolicy
    }
}

extension AiutaPlugin.Configuration.UserInterface {
    struct Theme: Decodable {
        let color: ColorTheme
        let fonts: [AiutaPlugin.Font]
        let label: LabelTheme
        let image: ImageTheme
        let button: ButtonTheme
        let pageBar: PageBarTheme
        let bottomSheet: BottomSheetTheme
        let activityIndicator: ActivityIndicatorTheme
        let selectionSnackbar: SelectionSnackbarTheme
        let errorSnackbar: ErrorSnackbarTheme
        let productBar: ProductBarTheme
        let powerBar: PowerBarTheme
    }
}

extension AiutaPlugin.Configuration.UserInterface.Theme {
    // Placeholder theme component structures
    struct ColorTheme: Decodable {
        enum Scheme: String, Decodable {
            case light, dark
        }

        let scheme: Scheme
        let brand: String
        let primary: String
        let secondary: String
        let onDark: String
        let onLight: String
        let background: String
        let screen: String
        let neutral: String
        let border: String
        let outline: String
    }

    struct LabelTheme: Decodable {
        let typography: Typography
    }

    struct ImageTheme: Decodable {
        let shapes: Shapes
        let icons: Icons
    }

    struct ButtonTheme: Decodable {
        let typography: Typography
        let shapes: Shapes
    }

    struct PageBarTheme: Decodable {
        let typography: Typography
        let icons: Icons
        let toggles: Toggles
    }

    struct BottomSheetTheme: Decodable {
        let typography: Typography
        let shapes: Shapes
        let grabber: Grabber
        let toggles: Toggles
    }

    struct ActivityIndicatorTheme: Decodable {
        let icons: Icons
        let colors: Colors
        let settings: Settings
    }

    struct SelectionSnackbarTheme: Decodable {
        let strings: Strings
        let icons: Icons
        let colors: Colors
    }

    struct ErrorSnackbarTheme: Decodable {
        let strings: Strings
        let icons: Icons
        let colors: Colors
    }

    struct ProductBarTheme: Decodable {
        let prices: Prices?
        let typography: Typography
        let icons: Icons
        let toggles: Toggles
    }

    struct PowerBarTheme: Decodable {
        let strings: Strings
        let colors: Colors
    }
}

extension AiutaPlugin.Configuration.UserInterface.Theme.LabelTheme {
    enum Typography: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown label typography type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let titleL: AiutaPlugin.TextStyle
            let titleM: AiutaPlugin.TextStyle
            let regular: AiutaPlugin.TextStyle
            let subtle: AiutaPlugin.TextStyle
        }
    }
}

extension AiutaPlugin.Configuration.UserInterface.Theme.ImageTheme {
    struct Shapes: Decodable {
        let imageL: Double
        let imageS: Double
    }

    enum Icons: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown image icons type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let imageError36: AiutaPlugin.Icon
        }
    }
}

extension AiutaPlugin.Configuration.UserInterface.Theme.ButtonTheme {
    struct Shapes: Decodable {
        let buttonM: Double
        let buttonS: Double
    }

    enum Typography: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown button typography type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let buttonM: AiutaPlugin.TextStyle
            let buttonS: AiutaPlugin.TextStyle
        }
    }
}

extension AiutaPlugin.Configuration.UserInterface.Theme.PageBarTheme {
    enum Typography: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown page bar typography type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let pageTitle: AiutaPlugin.TextStyle
        }
    }

    enum Icons: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown page bar icons type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let back24: AiutaPlugin.Icon
            let close24: AiutaPlugin.Icon
        }
    }

    struct Toggles: Decodable {
        let preferCloseButtonOnTheRight: Bool
    }
}

extension AiutaPlugin.Configuration.UserInterface.Theme.BottomSheetTheme {
    enum Typography: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown bottom sheet typography type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let iconButton: AiutaPlugin.TextStyle
            let chipsButton: AiutaPlugin.TextStyle
        }
    }

    struct Shapes: Decodable {
        let bottomSheet: Double
        let chipsButton: Double
    }

    struct Grabber: Decodable {
        let width: Double
        let height: Double
        let topPadding: Double
    }

    struct Toggles: Decodable {
        let extendDelimitersToTheRight: Bool
        let extendDelimitersToTheLeft: Bool
    }
}

extension AiutaPlugin.Configuration.UserInterface.Theme.ActivityIndicatorTheme {
    enum Icons: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown activity indicator icons type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let loading14: AiutaPlugin.Icon
        }
    }

    struct Colors: Decodable {
        let overlay: String
    }

    struct Settings: Decodable {
        let indicationDelay: Int
        let spinDuration: Int
    }
}

extension AiutaPlugin.Configuration.UserInterface.Theme.SelectionSnackbarTheme {
    enum Strings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown selection snackbar strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let select: String
            let cancel: String
            let selectAll: String
            let unselectAll: String
        }
    }

    enum Icons: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown selection snackbar icons type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let trash24: AiutaPlugin.Icon
            let check20: AiutaPlugin.Icon
        }
    }

    struct Colors: Decodable {
        let selectionBackground: String
    }
}

extension AiutaPlugin.Configuration.UserInterface.Theme.ErrorSnackbarTheme {
    enum Strings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown error snackbar strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let defaultErrorMessage: String
            let tryAgainButton: String
        }
    }

    enum Icons: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown error snackbar icons type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let error36: AiutaPlugin.Icon
        }
    }

    struct Colors: Decodable {
        let errorBackground: String
        let errorPrimary: String
    }
}

extension AiutaPlugin.Configuration.UserInterface.Theme.ProductBarTheme {
    struct Prices: Decodable {
        let typography: Typography
        let colors: Colors
    }

    enum Typography: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown product bar typography type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let product: AiutaPlugin.TextStyle
            let brand: AiutaPlugin.TextStyle
        }
    }

    enum Icons: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown product bar icons type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let arrow16: AiutaPlugin.Icon
        }
    }

    struct Toggles: Decodable {
        let applyProductFirstImageExtraPadding: Bool
    }
}

extension AiutaPlugin.Configuration.UserInterface.Theme.ProductBarTheme.Prices {
    enum Typography: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown product bar prices typography type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let price: AiutaPlugin.TextStyle
        }
    }

    struct Colors: Decodable {
        let discountedPrice: String
    }
}

extension AiutaPlugin.Configuration.UserInterface.Theme.PowerBarTheme {
    enum Strings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown power bar strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let poweredByAiuta: String
        }
    }

    struct Colors: Decodable {
        let aiuta: ColorsScheme
    }

    enum ColorsScheme: String, Decodable {
        case standard, primary
    }
}

// Basic placeholder structures for complex nested features
// These would need to be expanded based on the actual Flutter feature configurations
extension AiutaPlugin.Configuration {
    struct WelcomeScreenFeature: Decodable {
        let images: Images
        let icons: Icons
        let strings: Strings
        let typography: Typography
    }

    struct OnboardingFeature: Decodable {
        let howItWorksPage: HowItWorksPageFeature
        let bestResultsPage: BestResultsPageFeature?
        let strings: Strings
        let shapes: Shapes
        let dataProvider: DataProvider
    }

    enum ConsentFeature: Decodable {
        case embeddedIntoOnboarding(EmbeddedIntoOnboardingFeature)
        case standaloneOnboardingPage(StandalonePageFeature)
        case standaloneImagePickerPage(StandalonePageFeature)

        enum CodingKeys: String, CodingKey {
            case mode
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let mode = try container.decode(String.self, forKey: .mode)

            switch mode {
                case "embeddedIntoOnboarding":
                    let feature = try EmbeddedIntoOnboardingFeature(from: decoder)
                    self = .embeddedIntoOnboarding(feature)
                case "standaloneOnboardingPage":
                    let feature = try StandalonePageFeature(from: decoder)
                    self = .standaloneOnboardingPage(feature)
                case "standaloneImagePickerPage":
                    let feature = try StandalonePageFeature(from: decoder)
                    self = .standaloneImagePickerPage(feature)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown consent mode: \(mode)")
                    )
            }
        }
    }

    struct ImagePickerFeature: Decodable {
        let camera: CameraFeature?
        let photoGallery: PhotoGalleryFeature
        let predefinedModels: PredefinedModelFeature?
        let uploadsHistory: UploadsHistoryFeature?
        let images: Images
        let strings: Strings
    }

    struct TryOnFeature: Decodable {
        // 7 sub-features (3 required, 4 optional)
        let loadingPage: LoadingPageFeature
        let inputImageValidation: InputImageValidationFeature
        let cart: CartFeature
        let fitDisclaimer: FitDisclaimerFeature?
        let feedback: FeedbackFeature?
        let generationsHistory: GenerationsHistoryFeature?
        let otherPhoto: OtherPhotoFeature?

        // 4 main components
        let toggles: Toggles
        let icons: Icons
        let strings: Strings
        let styles: Styles
    }

    struct ShareFeature: Decodable {
        let watermark: WatermarkFeature?
        let icons: Icons
        let strings: Strings
        let dataProvider: DataProvider?
    }

    struct WishlistFeature: Decodable {
        let icons: Icons
        let strings: Strings
        let dataProvider: DataProvider
    }
}

extension AiutaPlugin.Configuration.WelcomeScreenFeature {
    // Images - only custom variant exists
    struct Images: Decodable {
        let welcomeBackground: String
    }

    // Icons - only custom variant exists
    struct Icons: Decodable {
        let welcome82: AiutaPlugin.Icon
    }

    // Strings - builtIn or custom
    enum Strings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown welcome screen strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let welcomeTitle: String
            let welcomeDescription: String
            let welcomeButtonStart: String
        }
    }

    // Typography - builtIn or custom
    enum Typography: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown welcome screen typography type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let welcomeTitle: AiutaPlugin.TextStyle
            let welcomeDescription: AiutaPlugin.TextStyle
        }
    }
}

extension AiutaPlugin.Configuration.WishlistFeature {
    // Icons - builtIn or custom
    enum Icons: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown wishlist icons type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let wishlist24: AiutaPlugin.Icon
            let wishlistFill24: AiutaPlugin.Icon
        }
    }

    // Strings - builtIn or custom
    enum Strings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown wishlist strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let wishlistButtonAdd: String
        }
    }

    // DataProvider - only custom variant exists (function callbacks excluded from JSON)
    struct DataProvider: Decodable {
        // Empty struct since function callbacks are excluded from JSON serialization
    }
}

extension AiutaPlugin.Configuration.ShareFeature {
    // Nested watermark feature
    struct WatermarkFeature: Decodable {
        let images: Images
    }

    // Icons - builtIn or custom
    enum Icons: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown share icons type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let share24: AiutaPlugin.Icon
        }
    }

    // Strings - builtIn or custom
    enum Strings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown share strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let shareButton: String
        }
    }

    // DataProvider - only custom variant exists (function callbacks excluded from JSON)
    struct DataProvider: Decodable {
        // Empty struct since function callbacks are excluded from JSON serialization
    }
}

extension AiutaPlugin.Configuration.ShareFeature.WatermarkFeature {
    // Images - only custom variant exists
    struct Images: Decodable {
        let logo: String
    }
}

extension AiutaPlugin.Configuration.OnboardingFeature {
    // Nested How It Works page feature
    struct HowItWorksPageFeature: Decodable {
        let images: Images
        let strings: Strings
    }

    // Nested Best Results page feature
    struct BestResultsPageFeature: Decodable {
        let images: Images
        let icons: Icons
        let strings: Strings
        let styles: Styles
    }

    // Main onboarding strings - builtIn or custom
    enum Strings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown onboarding strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let onboardingButtonNext: String
            let onboardingButtonStart: String
        }
    }

    // Main onboarding shapes
    struct Shapes: Decodable {
        let onboardingImageL: Double
        let onboardingImageS: Double
    }

    // Main onboarding data provider - builtIn or custom
    enum DataProvider: Decodable {
        case builtIn
        case custom

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    self = .custom
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown onboarding data provider type: \(type)")
                    )
            }
        }
    }
}

// How It Works page feature components
extension AiutaPlugin.Configuration.OnboardingFeature.HowItWorksPageFeature {
    // Images - builtIn or custom
    enum Images: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown how it works images type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let onboardingHowItWorksItems: [OnboardingHowItWorksItem]
        }
    }

    struct OnboardingHowItWorksItem: Decodable {
        let itemPhoto: String
        let itemPreview: String
    }

    // Strings - builtIn or custom
    enum Strings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown how it works strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let onboardingHowItWorksPageTitle: String?
            let onboardingHowItWorksTitle: String
            let onboardingHowItWorksDescription: String
        }
    }
}

// Best Results page feature components
extension AiutaPlugin.Configuration.OnboardingFeature.BestResultsPageFeature {
    // Images - only custom variant exists
    struct Images: Decodable {
        let onboardingBestResultsGood: [String]
        let onboardingBestResultsBad: [String]
    }

    // Icons - only custom variant exists
    struct Icons: Decodable {
        let onboardingBestResultsGood24: AiutaPlugin.Icon
        let onboardingBestResultsBad24: AiutaPlugin.Icon
    }

    // Strings - builtIn or custom
    enum Strings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown best results strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let onboardingBestResultsPageTitle: String?
            let onboardingBestResultsTitle: String
            let onboardingBestResultsDescription: String
        }
    }

    // Styles - simple struct
    struct Styles: Decodable {
        let reduceOnboardingBestResultsShadows: Bool
    }
}

// ConsentFeature variants and components
extension AiutaPlugin.Configuration.ConsentFeature {
    // Embedded into onboarding variant (simple)
    struct EmbeddedIntoOnboardingFeature: Decodable {
        let strings: EmbeddedStrings
    }

    // Standalone onboarding page variant (complex)
    struct StandalonePageFeature: Decodable {
        let strings: StandaloneStrings
        let icons: StandaloneIcons
        let styles: StandaloneStyles
        let data: StandaloneData
        let dataProvider: StandaloneDataProvider
    }

    // Additional types for consent feature
    struct AiutaConsent: Decodable {
        let id: String
        let type: AiutaConsentType
        let html: String
    }

    enum AiutaConsentType: String, Decodable {
        case implicitWithoutCheckbox, implicitWithCheckbox, explicitRequired, explicitOptional
    }

    enum AiutaConsentMode: String, Decodable {
        case embeddedIntoOnboarding, standaloneOnboardingPage, standaloneImagePickerPage
    }
}

// Embedded consent strings (simple variant)
extension AiutaPlugin.Configuration.ConsentFeature {
    enum EmbeddedStrings: Decodable {
        case builtIn(BuiltIn)
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    let builtIn = try BuiltIn(from: decoder)
                    self = .builtIn(builtIn)
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown embedded consent strings type: \(type)")
                    )
            }
        }

        struct BuiltIn: Decodable {
            let termsOfServiceUrl: String
        }

        struct Custom: Decodable {
            let consentHtml: String
        }
    }
}

// Standalone consent components (complex variants)
extension AiutaPlugin.Configuration.ConsentFeature {
    enum StandaloneStrings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown standalone consent strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let consentPageTitle: String?
            let consentTitle: String
            let consentDescriptionHtml: String
            let consentFooterHtml: String?
            let consentButtonAccept: String
            let consentButtonReject: String?
        }
    }

    enum StandaloneIcons: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown standalone consent icons type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let consentTitle24: AiutaPlugin.Icon
        }
    }

    struct StandaloneStyles: Decodable {
        let drawBordersAroundConsents: Bool
    }

    struct StandaloneData: Decodable {
        let consents: [AiutaConsent]
    }

    enum StandaloneDataProvider: Decodable {
        case builtIn
        case custom

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    self = .custom
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown standalone consent data provider type: \(type)")
                    )
            }
        }
    }
}

// ImagePickerFeature sub-features and components
extension AiutaPlugin.Configuration.ImagePickerFeature {
    // Camera sub-feature (simple - 2 components)
    struct CameraFeature: Decodable {
        let icons: CameraIcons
        let strings: CameraStrings
    }

    // PhotoGallery sub-feature (simple - 2 components)
    struct PhotoGalleryFeature: Decodable {
        let icons: PhotoGalleryIcons
        let strings: PhotoGalleryStrings
    }

    // PredefinedModel sub-feature (medium - 3 components)
    struct PredefinedModelFeature: Decodable {
        let data: PredefinedModelData?
        let icons: PredefinedModelIcons
        let strings: PredefinedModelStrings
    }

    // UploadsHistory sub-feature (complex - 3 components)
    struct UploadsHistoryFeature: Decodable {
        let strings: UploadsHistoryStrings
        let styles: UploadsHistoryStyles
        let dataProvider: UploadsHistoryDataProvider
    }

    // Main ImagePicker Images - builtIn or custom
    enum Images: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown image picker images type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let examples: [String] // Exactly 2 images required
        }
    }

    // Main ImagePicker Strings - builtIn or custom
    enum Strings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown image picker strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let imagePickerTitleEmpty: String
            let imagePickerDescriptionEmpty: String
            let imagePickerButtonUploadImage: String
        }
    }
}

// Camera sub-feature components
extension AiutaPlugin.Configuration.ImagePickerFeature {
    enum CameraIcons: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown camera icons type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let camera24: AiutaPlugin.Icon
        }
    }

    enum CameraStrings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown camera strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            var cameraButtonTakePhoto: String
            var cameraPermissionTitle: String
            var cameraPermissionDescription: String
            var cameraPermissionButtonOpenSettings: String
        }
    }
}

// PhotoGallery sub-feature components
extension AiutaPlugin.Configuration.ImagePickerFeature {
    enum PhotoGalleryIcons: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown photo gallery icons type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let gallery24: AiutaPlugin.Icon
        }
    }

    enum PhotoGalleryStrings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown photo gallery strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let galleryButtonSelectPhoto: String
        }
    }
}

// PredefinedModel sub-feature components
extension AiutaPlugin.Configuration.ImagePickerFeature {
    struct PredefinedModelData: Decodable {
        let preferredCategoryId: String
    }

    enum PredefinedModelIcons: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown predefined model icons type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let selectModels24: AiutaPlugin.Icon
        }
    }

    enum PredefinedModelStrings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown predefined model strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let predefinedModelsTitle: String
            let predefinedModelsOr: String
            let predefinedModelsEmptyListError: String
            let predefinedModelsCategories: [String: String]
        }
    }
}

// UploadsHistory sub-feature components
extension AiutaPlugin.Configuration.ImagePickerFeature {
    enum UploadsHistoryStrings: Decodable {
        case builtIn(BuiltIn)
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    let builtIn = try BuiltIn(from: decoder)
                    self = .builtIn(builtIn)
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown uploads history strings type: \(type)")
                    )
            }
        }

        struct BuiltIn: Decodable {
            let isPredefinedModelAvailable: Bool
        }

        struct Custom: Decodable {
            let uploadsHistoryButtonNewPhoto: String
            let uploadsHistoryTitle: String
            let uploadsHistoryButtonChangePhoto: String
        }
    }

    struct UploadsHistoryStyles: Decodable {
        let changePhotoButtonStyle: AiutaPlugin.ComponentStyle
    }

    enum UploadsHistoryDataProvider: Decodable {
        case builtIn
        case custom

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    self = .custom
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown uploads history data provider type: \(type)")
                    )
            }
        }
    }
}

// Main TryOnFeature components
extension AiutaPlugin.Configuration.TryOnFeature {
    struct Toggles: Decodable {
        let isBackgroundExecutionAllowed: Bool
    }

    enum Icons: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown try-on icons type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let tryOn20: AiutaPlugin.Icon
        }
    }

    enum Strings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown try-on strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let tryOnPageTitle: String
            let tryOn: String
        }
    }

    struct Styles: Decodable {
        let tryOnButtonGradient: [String]?
    }
}

// Sub-feature 1: LoadingPageFeature (required) - 2 components
extension AiutaPlugin.Configuration.TryOnFeature {
    struct LoadingPageFeature: Decodable {
        let strings: LoadingPageStrings
        let styles: LoadingPageStyles
    }
}

extension AiutaPlugin.Configuration.TryOnFeature.LoadingPageFeature {
    enum LoadingPageStrings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown loading page strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let tryOnLoadingStatusUploadingImage: String
            let tryOnLoadingStatusScanningBody: String
            let tryOnLoadingStatusGeneratingOutfit: String
        }
    }

    struct LoadingPageStyles: Decodable {
        let loadingStatusBackgroundGradient: [String]?
        let loadingStatusStyle: AiutaPlugin.ComponentStyle
    }
}

// Sub-feature 2: InputImageValidationFeature (required) - 1 component
extension AiutaPlugin.Configuration.TryOnFeature {
    struct InputImageValidationFeature: Decodable {
        let strings: InputImageValidationStrings
    }
}

extension AiutaPlugin.Configuration.TryOnFeature.InputImageValidationFeature {
    enum InputImageValidationStrings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown input image validation strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let invalidInputImageDescription: String
            let invalidInputImageChangePhotoButton: String
        }
    }
}

// Sub-feature 3: CartFeature (required) - 2 components
extension AiutaPlugin.Configuration.TryOnFeature {
    struct CartFeature: Decodable {
        let strings: CartStrings
        // handler is excluded from JSON as it's a function reference
    }
}

extension AiutaPlugin.Configuration.TryOnFeature.CartFeature {
    enum CartStrings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown cart strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let addToCartTitle: String
            let addToCart: String
        }
    }
}

// Sub-feature 4: FitDisclaimerFeature (optional) - 2 components
extension AiutaPlugin.Configuration.TryOnFeature {
    struct FitDisclaimerFeature: Decodable {
        let icons: FitDisclaimerIcons
        let strings: FitDisclaimerStrings
        let typography: FitDisclaimerTypography
    }
}

extension AiutaPlugin.Configuration.TryOnFeature.FitDisclaimerFeature {
    enum FitDisclaimerIcons: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown fit disclaimer icons type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let info20: AiutaPlugin.Icon?
        }
    }

    enum FitDisclaimerStrings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown fit disclaimer strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let fitDisclaimerTitle: String
            let fitDisclaimerDescription: String
            let fitDisclaimerCloseButton: String
        }
    }
    
    enum FitDisclaimerTypography: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown label typography type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let disclaimer: AiutaPlugin.TextStyle
        }
    }
}

// Sub-feature 5: FeedbackFeature (optional) - 3 components + nested sub-feature
extension AiutaPlugin.Configuration.TryOnFeature {
    struct FeedbackFeature: Decodable {
        let otherFeedback: FeedbackOtherFeature?
        let icons: FeedbackIcons
        let strings: FeedbackStrings
    }
}

extension AiutaPlugin.Configuration.TryOnFeature.FeedbackFeature {
    // Nested sub-feature: FeedbackOtherFeature - 1 component
    struct FeedbackOtherFeature: Decodable {
        let strings: FeedbackOtherStrings
    }

    enum FeedbackIcons: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown feedback icons type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let like36: AiutaPlugin.Icon
            let dislike36: AiutaPlugin.Icon
            let gratitude40: AiutaPlugin.Icon
        }
    }

    enum FeedbackStrings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown feedback strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let feedbackTitle: String
            let feedbackOptions: [String]
            let feedbackButtonSkip: String
            let feedbackButtonSend: String
            let feedbackGratitudeText: String
        }
    }
}

extension AiutaPlugin.Configuration.TryOnFeature.FeedbackFeature.FeedbackOtherFeature {
    enum FeedbackOtherStrings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown feedback other strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let feedbackOptionOther: String
            let otherFeedbackTitle: String
            let otherFeedbackButtonSend: String
            let otherFeedbackButtonCancel: String
        }
    }
}

// Sub-feature 6: GenerationsHistoryFeature (optional) - 3 components
extension AiutaPlugin.Configuration.TryOnFeature {
    struct GenerationsHistoryFeature: Decodable {
        let icons: GenerationsHistoryIcons
        let strings: GenerationsHistoryStrings
        let dataProvider: GenerationsHistoryDataProvider
    }
}

extension AiutaPlugin.Configuration.TryOnFeature.GenerationsHistoryFeature {
    enum GenerationsHistoryIcons: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown generations history icons type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let history24: AiutaPlugin.Icon
        }
    }

    enum GenerationsHistoryStrings: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown generations history strings type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let generationsHistoryPageTitle: String
        }
    }

    enum GenerationsHistoryDataProvider: Decodable {
        case builtIn
        case custom

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    self = .custom
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown generations history data provider type: \(type)")
                    )
            }
        }
    }
}

// Sub-feature 7: OtherPhotoFeature (optional) - 1 component
extension AiutaPlugin.Configuration.TryOnFeature {
    struct OtherPhotoFeature: Decodable {
        let icons: OtherPhotoIcons
    }
}

extension AiutaPlugin.Configuration.TryOnFeature.OtherPhotoFeature {
    enum OtherPhotoIcons: Decodable {
        case builtIn
        case custom(Custom)

        enum CodingKeys: String, CodingKey {
            case type
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)

            switch type {
                case "builtIn":
                    self = .builtIn
                case "custom":
                    let custom = try Custom(from: decoder)
                    self = .custom(custom)
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown other photo icons type: \(type)")
                    )
            }
        }

        struct Custom: Decodable {
            let changePhoto24: AiutaPlugin.Icon
        }
    }
}
