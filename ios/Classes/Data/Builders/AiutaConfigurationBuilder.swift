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
import UIKit

private let defaultLocalization = LocalizationPack()
private let defaultTypography = TypographyPack()
private let defaultIcons = IconsPack.builtin
private let defaultImages = ImagesPack.builtin

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration {
    func buildConfiguration(with host: AiutaHost) -> Aiuta.Configuration {
        Aiuta.Configuration(
            auth: auth.build(with: host),
            userInterface: userInterface.build(),
            features: features.build(with: host, ui: userInterface),
            analytics: analytics.build(with: host),
            debugSettings: debugSettings.build()
        )
    }
}

// MARK: - Authentication

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.Auth {
    func build(with host: AiutaHost) -> Aiuta.Auth {
        switch self {
            case let .apiKey(auth):
                return .apiKey(auth.apiKey)
            case let .jwt(auth):
                return .jwt(subscriptionId: auth.subscriptionId, jwtProvider: host.jwtProvider)
        }
    }
}

// MARK: - User Interface

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface {
    func build() -> Aiuta.Configuration.UserInterface {
        Aiuta.Configuration.UserInterface(
            theme: theme.build(),
            presentationStyle: presentationStyle,
            swipeToDismissPolicy: swipeToDismiss
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme {
    func build() -> Aiuta.Configuration.UserInterface.Theme {
        Aiuta.Configuration.UserInterface.Theme(
            color: color.build(),
            label: label.build(with: fonts),
            image: image.build(),
            button: button.build(with: fonts),
            pageBar: pageBar.build(with: fonts),
            bottomSheet: bottomSheet.build(),
            activityIndicator: activityIndicator.build(),
            selectionSnackbar: selectionSnackbar.build(),
            errorSnackbar: errorSnackbar.build(),
            productBar: productBar.build(with: fonts),
            powerBar: powerBar.build()
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.ColorTheme {
    func build() -> Aiuta.Configuration.UserInterface.ColorTheme {
        Aiuta.Configuration.UserInterface.ColorTheme(
            scheme: scheme == .light ? .light : .dark,
            brand: Aiuta.Color(hex: brand),
            primary: Aiuta.Color(hex: primary),
            secondary: Aiuta.Color(hex: secondary),
            onDark: Aiuta.Color(hex: onDark),
            onLight: Aiuta.Color(hex: onLight),
            background: Aiuta.Color(hex: background),
            screen: Aiuta.Color(hex: screen),
            neutral: Aiuta.Color(hex: neutral),
            border: Aiuta.Color(hex: border)
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.LabelTheme {
    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.UserInterface.LabelTheme {
        switch typography {
            case .builtIn:
                return Aiuta.Configuration.UserInterface.LabelTheme(
                    typography: .init(
                        titleL: defaultTypography.titleL,
                        titleM: defaultTypography.titleM,
                        regular: defaultTypography.regular,
                        subtle: defaultTypography.subtle,
                        footnote: defaultTypography.footnote
                    )
                )
            case let .custom(theme):
                return Aiuta.Configuration.UserInterface.LabelTheme(
                    typography: .init(
                        titleL: theme.titleL.textStyle(with: fonts),
                        titleM: theme.titleM.textStyle(with: fonts),
                        regular: theme.regular.textStyle(with: fonts),
                        subtle: theme.subtle.textStyle(with: fonts),
                        footnote: theme.footnote.textStyle(with: fonts)
                    )
                )
        }
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.ImageTheme {
    func build() -> Aiuta.Configuration.UserInterface.ImageTheme {
        let iconsValue: Aiuta.Configuration.UserInterface.ImageTheme.Icons
        switch icons {
            case .builtIn:
                iconsValue = .init(imageError36: defaultIcons.imageError36)
            case let .custom(icons):
                iconsValue = .init(imageError36: icons.imageError36.uiImage())
        }

        return Aiuta.Configuration.UserInterface.ImageTheme(
            shapes: .init(
                imageL: .continuous(radius: shapes.imageL),
                imageM: .continuous(radius: shapes.imageM),
                imageS: .continuous(radius: shapes.imageS)
            ),
            icons: iconsValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.ButtonTheme {
    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.UserInterface.ButtonTheme {
        let typographyValue: Aiuta.Configuration.UserInterface.ButtonTheme.Typography
        switch typography {
            case .builtIn:
                typographyValue = .init(buttonM: defaultTypography.buttonM, buttonS: defaultTypography.buttonS)
            case let .custom(theme):
                typographyValue = .init(
                    buttonM: theme.buttonM.textStyle(with: fonts),
                    buttonS: theme.buttonS.textStyle(with: fonts)
                )
        }

        return Aiuta.Configuration.UserInterface.ButtonTheme(
            typography: typographyValue,
            shapes: .init(
                buttonL: .continuous(radius: shapes.buttonM),
                buttonM: .continuous(radius: shapes.buttonM),
                buttonS: .continuous(radius: shapes.buttonS)
            )
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.PageBarTheme {
    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.UserInterface.PageBarTheme {
        let typographyValue: Aiuta.Configuration.UserInterface.PageBarTheme.Typography
        switch typography {
            case .builtIn:
                typographyValue = .init(pageTitle: defaultTypography.pageTitle)
            case let .custom(custom):
                typographyValue = .init(pageTitle: custom.pageTitle.textStyle(with: fonts))
        }

        let iconsValue: Aiuta.Configuration.UserInterface.PageBarTheme.Icons
        switch icons {
            case .builtIn:
                iconsValue = .init(back24: defaultIcons.back24, close24: defaultIcons.close24)
            case let .custom(custom):
                iconsValue = .init(back24: custom.back24.uiImage(), close24: custom.close24.uiImage())
        }

        return Aiuta.Configuration.UserInterface.PageBarTheme(
            typography: typographyValue,
            icons: iconsValue,
            settings: .init(preferCloseButtonOnTheRight: toggles.preferCloseButtonOnTheRight)
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.BottomSheetTheme {
    func build() -> Aiuta.Configuration.UserInterface.BottomSheetTheme {
        return Aiuta.Configuration.UserInterface.BottomSheetTheme(
            shapes: .init(
                bottomSheet: .continuous(radius: shapes.bottomSheet),
                chipsButton: .continuous(radius: shapes.chipsButton)
            ),
            grabber: .init(
                width: CGFloat(grabber.width),
                height: CGFloat(grabber.height),
                offset: CGFloat(grabber.topPadding)
            ),
            settings: .init(
                extendDelimitersToTheRight: toggles.extendDelimitersToTheRight,
                extendDelimitersToTheLeft: toggles.extendDelimitersToTheLeft
            )
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.ActivityIndicatorTheme {
    func build() -> Aiuta.Configuration.UserInterface.ActivityIndicatorTheme {
        let iconsValue: Aiuta.Configuration.UserInterface.ActivityIndicatorTheme.Icons
        switch icons {
            case .builtIn:
                iconsValue = .init(loading14: nil)
            case let .custom(custom):
                iconsValue = .init(loading14: custom.loading14.uiImage())
        }

        return Aiuta.Configuration.UserInterface.ActivityIndicatorTheme(
            icons: iconsValue,
            colors: .init(overlay: Aiuta.Color(hex: colors.overlay)),
            settings: .init(indicationDelay: settings.indicationDelay, spinDuration: settings.spinDuration)
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.SelectionSnackbarTheme {
    func build() -> Aiuta.Configuration.UserInterface.SelectionSnackbarTheme {
        let stringsValue: Aiuta.Configuration.UserInterface.SelectionSnackbarTheme.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(select: defaultLocalization.select, cancel: defaultLocalization.cancel, selectAll: defaultLocalization.selectAll, unselectAll: defaultLocalization.unselectAll)
            case let .custom(custom):
                stringsValue = .init(select: custom.select, cancel: custom.cancel, selectAll: custom.selectAll, unselectAll: custom.unselectAll)
        }

        let iconsValue: Aiuta.Configuration.UserInterface.SelectionSnackbarTheme.Icons
        switch icons {
            case .builtIn:
                iconsValue = .init(trash24: defaultIcons.trash24, check20: defaultIcons.check20)
            case let .custom(custom):
                iconsValue = .init(trash24: custom.trash24.uiImage(), check20: custom.check20.uiImage())
        }

        return Aiuta.Configuration.UserInterface.SelectionSnackbarTheme(
            strings: stringsValue,
            icons: iconsValue,
            colors: .init(selectionBackground: Aiuta.Color(hex: colors.selectionBackground))
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.ErrorSnackbarTheme {
    func build() -> Aiuta.Configuration.UserInterface.ErrorSnackbarTheme {
        let stringsValue: Aiuta.Configuration.UserInterface.ErrorSnackbarTheme.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(defaultErrorMessage: defaultLocalization.defaultErrorMessage, tryAgainButton: defaultLocalization.tryAgainButton)
            case let .custom(custom):
                stringsValue = .init(defaultErrorMessage: custom.defaultErrorMessage, tryAgainButton: custom.tryAgainButton)
        }

        let iconsValue: Aiuta.Configuration.UserInterface.ErrorSnackbarTheme.Icons
        switch icons {
            case .builtIn:
                iconsValue = .init(error36: defaultIcons.error36)
            case let .custom(custom):
                iconsValue = .init(error36: custom.error36.uiImage())
        }

        return Aiuta.Configuration.UserInterface.ErrorSnackbarTheme(
            strings: stringsValue,
            icons: iconsValue,
            colors: .init(errorBackground: Aiuta.Color(hex: colors.errorBackground), errorPrimary: Aiuta.Color(hex: colors.errorPrimary))
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.ProductBarTheme {
    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.UserInterface.ProductBarTheme {
        let typographyValue: Aiuta.Configuration.UserInterface.ProductBarTheme.Typography
        switch typography {
            case .builtIn:
                typographyValue = .init(product: defaultTypography.product, brand: defaultTypography.brand)
            case let .custom(custom):
                typographyValue = .init(
                    product: custom.product.textStyle(with: fonts),
                    brand: custom.brand.textStyle(with: fonts)
                )
        }

        let iconsValue: Aiuta.Configuration.UserInterface.ProductBarTheme.Icons
        switch icons {
            case .builtIn:
                iconsValue = .init(arrow16: defaultIcons.arrow16)
            case let .custom(custom):
                iconsValue = .init(arrow16: custom.arrow16.uiImage())
        }

        let pricesValue: Aiuta.Configuration.UserInterface.ProductBarTheme.Prices?
        if let pricesConfig = prices {
            let pricesTypographyValue: Aiuta.Configuration.UserInterface.ProductBarTheme.Prices.Typography
            switch pricesConfig.typography {
                case .builtIn:
                    pricesTypographyValue = .init(price: defaultTypography.subtle)
                case let .custom(custom):
                    pricesTypographyValue = .init(price: custom.price.textStyle(with: fonts))
            }

            pricesValue = Aiuta.Configuration.UserInterface.ProductBarTheme.Prices(
                typography: pricesTypographyValue,
                colors: .init(discountedPrice: Aiuta.Color(hex: pricesConfig.colors.discountedPrice))
            )
        } else {
            pricesValue = nil
        }

        return Aiuta.Configuration.UserInterface.ProductBarTheme(
            icons: iconsValue,
            typography: typographyValue,
            settings: .init(applyProductFirstImageExtraPadding: toggles.applyProductFirstImageExtraPadding),
            prices: pricesValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.PowerBarTheme {
    func build() -> Aiuta.Configuration.UserInterface.PowerBarTheme {
        let stringsValue: Aiuta.Configuration.UserInterface.PowerBarTheme.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(poweredByAiuta: defaultLocalization.poweredByAiuta)
            case let .custom(custom):
                stringsValue = .init(poweredByAiuta: custom.poweredByAiuta)
        }

        // Dart no longer sends colors — use default scheme
        return Aiuta.Configuration.UserInterface.PowerBarTheme(
            strings: stringsValue,
            colors: .init(aiuta: .default)
        )
    }
}

// MARK: - Features

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.Features {
    func build(with host: AiutaHost, ui: AiutaPlugin.Configuration.UserInterface) -> Aiuta.Configuration.Features {
        Aiuta.Configuration.Features(
            welcomeScreen: welcomeScreen?.build(with: ui.theme.fonts),
            onboarding: onboarding?.build(with: host, shapes: ui.theme.image.shapes),
            consent: consent?.build(with: host, fonts: ui.theme.fonts) ?? .none,
            imagePicker: imagePicker.build(with: host, fonts: ui.theme.fonts),
            tryOn: tryOn.build(with: host, fonts: ui.theme.fonts, ui: ui),
            share: share?.build(with: host, fonts: ui.theme.fonts),
            wishlist: wishlist?.build(with: host, fonts: ui.theme.fonts),
            sizeFit: nil
        )
    }
}

// MARK: - WelcomeScreen Feature

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.WelcomeScreenFeature {
    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.WelcomeScreen? {
        guard case let .custom(customStrings) = strings else { return nil }

        let stringsValue = Aiuta.Configuration.Features.WelcomeScreen.Strings(
            welcomeTitle: customStrings.welcomeTitle,
            welcomeDescription: customStrings.welcomeDescription,
            welcomeButtonStart: customStrings.welcomeButtonStart
        )

        let typographyValue: Aiuta.Configuration.Features.WelcomeScreen.Typography
        switch typography {
            case .builtIn:
                let defaultStyle = Aiuta.TextStyle(size: 16, weight: .regular)
                typographyValue = .init(welcomeTitle: defaultStyle, welcomeDescription: defaultStyle)
            case let .custom(custom):
                typographyValue = .init(
                    welcomeTitle: custom.welcomeTitle.textStyle(with: fonts),
                    welcomeDescription: custom.welcomeDescription.textStyle(with: fonts)
                )
        }

        return Aiuta.Configuration.Features.WelcomeScreen(
            images: .init(welcomeBackground: images.welcomeBackground.uiImage()),
            icons: .init(welcome82: icons.welcome82.uiImage()),
            strings: stringsValue,
            typography: typographyValue
        )
    }
}

// MARK: - Onboarding Feature

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.OnboardingFeature {
    func build(with host: AiutaHost, shapes: AiutaPlugin.Configuration.UserInterface.Theme.ImageTheme.Shapes) -> Aiuta.Configuration.Features.Onboarding {
        let stringsValue: Aiuta.Configuration.Features.Onboarding.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(onboardingButtonNext: defaultLocalization.onboardingButtonNext, onboardingButtonStart: defaultLocalization.onboardingButtonStart)
            case let .custom(custom):
                stringsValue = .init(onboardingButtonNext: custom.onboardingButtonNext, onboardingButtonStart: custom.onboardingButtonStart)
        }

        let shapesValue = Aiuta.Configuration.Features.Onboarding.Shapes(
            onboardingImageL: .continuous(radius: self.shapes.onboardingImageL),
            onboardingImageS: .continuous(radius: self.shapes.onboardingImageS)
        )

        let dataProviderValue: Aiuta.Configuration.Features.Onboarding.StateProvider
        switch dataProvider {
            case .builtIn: dataProviderValue = .userDefaults
            case .custom: dataProviderValue = .dataProvider(host as! Aiuta.Configuration.Features.Onboarding.DataProvider)
        }

        return Aiuta.Configuration.Features.Onboarding(
            howItWorks: howItWorksPage.build(),
            bestResults: bestResultsPage?.build(),
            strings: stringsValue,
            shapes: shapesValue,
            data: dataProviderValue
        )
    }
}

// MARK: - Onboarding Sub-Features

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.OnboardingFeature.HowItWorksPageFeature {
    func build() -> Aiuta.Configuration.Features.Onboarding.HowItWorks {
        let imagesValue: Aiuta.Configuration.Features.Onboarding.HowItWorks.Images
        switch images {
            case .builtIn:
                imagesValue = .init(onboardingHowItWorksItems: defaultImages.onboardingHowItWorksItems)
            case let .custom(custom):
                imagesValue = .init(onboardingHowItWorksItems: custom.onboardingHowItWorksItems.map { item in
                    Aiuta.Configuration.Features.Onboarding.HowItWorks.Images.Item(
                        itemPhoto: item.itemPhoto.uiImage(),
                        itemPreview: item.itemPreview.uiImage()
                    )
                })
        }

        let stringsValue: Aiuta.Configuration.Features.Onboarding.HowItWorks.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(onboardingHowItWorksPageTitle: nil, onboardingHowItWorksTitle: defaultLocalization.onboardingHowItWorksTitle, onboardingHowItWorksDescription: defaultLocalization.onboardingHowItWorksDescription)
            case let .custom(custom):
                stringsValue = .init(
                    onboardingHowItWorksPageTitle: custom.onboardingHowItWorksPageTitle,
                    onboardingHowItWorksTitle: custom.onboardingHowItWorksTitle,
                    onboardingHowItWorksDescription: custom.onboardingHowItWorksDescription
                )
        }

        return Aiuta.Configuration.Features.Onboarding.HowItWorks(
            images: imagesValue,
            strings: stringsValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.OnboardingFeature.BestResultsPageFeature {
    func build() -> Aiuta.Configuration.Features.Onboarding.BestResults? {
        guard case let .custom(customStrings) = strings else { return nil }

        let stringsValue = Aiuta.Configuration.Features.Onboarding.BestResults.Strings(
            onboardingBestResultsPageTitle: customStrings.onboardingBestResultsPageTitle,
            onboardingBestResultsTitle: customStrings.onboardingBestResultsTitle,
            onboardingBestResultsDescription: customStrings.onboardingBestResultsDescription
        )

        return Aiuta.Configuration.Features.Onboarding.BestResults(
            images: .init(
                onboardingBestResultsGood: images.onboardingBestResultsGood.map { $0.uiImage() },
                onboardingBestResultsBad: images.onboardingBestResultsBad.map { $0.uiImage() }
            ),
            icons: .init(
                onboardingBestResultsGood24: icons.onboardingBestResultsGood24.uiImage(),
                onboardingBestResultsBad24: icons.onboardingBestResultsBad24.uiImage()
            ),
            strings: stringsValue,
            toggles: .init(reduceShadows: styles.reduceOnboardingBestResultsShadows)
        )
    }
}

// MARK: - Consent Feature

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ConsentFeature {
    func build(with host: AiutaHost, fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.Consent {
        switch self {
            case let .embeddedIntoOnboarding(embedded):
                return embedded.build()
            case let .standaloneOnboardingPage(standalone):
                return standalone.build(with: host)
            case let .standaloneImagePickerPage(standalone):
                return standalone.build(with: host, isImagePickerPage: true)
        }
    }
}

// MARK: - Consent Sub-Features

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ConsentFeature.EmbeddedIntoOnboardingFeature {
    func build() -> Aiuta.Configuration.Features.Consent {
        let stringsValue: Aiuta.Configuration.Features.Consent.Embedded.Strings
        switch strings {
            case let .builtIn(builtIn):
                stringsValue = .default(termsOfServiceUrl: builtIn.termsOfServiceUrl)
            case let .custom(custom):
                stringsValue = .init(consentHtml: custom.consentHtml)
        }

        return .embeddedIntoOnboarding(.init(strings: stringsValue))
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ConsentFeature.StandalonePageFeature {
    func build(with host: AiutaHost, isImagePickerPage: Bool = false) -> Aiuta.Configuration.Features.Consent {
        let stringsValue: Aiuta.Configuration.Features.Consent.Standalone.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(
                    consentPageTitle: "Consent",
                    consentTitle: "Data Processing Agreement",
                    consentDescriptionHtml: "Please review and accept the terms below to continue.",
                    consentFooterHtml: nil,
                    consentButtonAccept: "Accept"
                )
            case let .custom(custom):
                stringsValue = .init(
                    consentPageTitle: custom.consentPageTitle,
                    consentTitle: custom.consentTitle,
                    consentDescriptionHtml: custom.consentDescriptionHtml,
                    consentFooterHtml: custom.consentFooterHtml,
                    consentButtonAccept: custom.consentButtonAccept
                )
        }

        let iconsValue: Aiuta.Configuration.Features.Consent.Standalone.Icons
        switch icons {
            case .none, .some(.builtIn):
                iconsValue = .init(consentTitle24: nil)
            case let .some(.custom(custom)):
                iconsValue = .init(consentTitle24: custom.consentTitle24.uiImage())
        }

        let stylesValue = Aiuta.Configuration.Features.Consent.Standalone.Styles(
            drawBordersAroundConsents: styles.drawBordersAroundConsents
        )

        let consents = data.consents.map { consent in
            Aiuta.Consent(
                id: consent.id,
                type: consent.type.sdkType(),
                html: consent.html
            )
        }

        let consentProvider: Aiuta.Configuration.Features.Consent.Standalone.ConsentProvider
        switch dataProvider {
            case .builtIn: consentProvider = .userDefaults(consents: consents)
            case .custom: consentProvider = .dataProvider(consents: consents, host as! Aiuta.Configuration.Features.Consent.Standalone.DataProvider)
        }

        let standalone = Aiuta.Configuration.Features.Consent.Standalone(
            strings: stringsValue,
            icons: iconsValue,
            styles: stylesValue,
            data: consentProvider
        )

        if isImagePickerPage {
            return .standaloneImagePickerPage(standalone)
        } else {
            return .standaloneOnboardingPage(standalone)
        }
    }
}

// MARK: - ImagePicker Feature

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ImagePickerFeature {
    func build(with host: AiutaHost, fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.ImagePicker {
        let imagesValue: Aiuta.Configuration.Features.ImagePicker.Images
        switch images {
            case .builtIn:
                imagesValue = .init(imagePickerExamples: defaultImages.imagePickerExamples)
            case let .custom(custom):
                imagesValue = .init(imagePickerExamples: custom.examples.map { $0.uiImage() })
        }

        let stringsValue: Aiuta.Configuration.Features.ImagePicker.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(imagePickerTitle: defaultLocalization.imagePickerTitle, imagePickerDescription: defaultLocalization.imagePickerDescription, imagePickerButtonUploadPhoto: defaultLocalization.imagePickerButtonUploadPhoto)
            case let .custom(custom):
                stringsValue = .init(
                    imagePickerTitle: custom.imagePickerTitleEmpty,
                    imagePickerDescription: custom.imagePickerDescriptionEmpty,
                    imagePickerButtonUploadPhoto: custom.imagePickerButtonUploadImage
                )
        }

        return Aiuta.Configuration.Features.ImagePicker(
            camera: camera?.build(with: fonts),
            photoGallery: photoGallery.build(with: fonts),
            predefinedModels: predefinedModels?.build(with: fonts),
            protectionDisclaimer: protectionDisclaimer?.build(),
            uploadsHistory: uploadsHistory?.build(with: host, fonts: fonts),
            images: imagesValue,
            strings: stringsValue
        )
    }
}

// MARK: - ImagePicker Sub-Features

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ImagePickerFeature.CameraFeature {
    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.ImagePicker.Camera {
        let iconsValue: Aiuta.Configuration.Features.ImagePicker.Camera.Icons
        switch icons {
            case .builtIn:
                iconsValue = .init(camera24: defaultIcons.camera24)
            case let .custom(custom):
                iconsValue = .init(camera24: custom.camera24.uiImage())
        }

        let stringsValue: Aiuta.Configuration.Features.ImagePicker.Camera.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(cameraButtonTakePhoto: defaultLocalization.cameraButtonTakePhoto, cameraPermissionTitle: defaultLocalization.cameraPermissionTitle, cameraPermissionDescription: defaultLocalization.cameraPermissionDescription, cameraPermissionButtonOpenSettings: defaultLocalization.cameraPermissionButtonOpenSettings)
            case let .custom(custom):
                stringsValue = .init(
                    cameraButtonTakePhoto: custom.cameraButtonTakePhoto,
                    cameraPermissionTitle: custom.cameraPermissionTitle,
                    cameraPermissionDescription: custom.cameraPermissionDescription,
                    cameraPermissionButtonOpenSettings: custom.cameraPermissionButtonOpenSettings
                )
        }

        return Aiuta.Configuration.Features.ImagePicker.Camera(
            icons: iconsValue,
            strings: stringsValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ImagePickerFeature.PhotoGalleryFeature {
    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.ImagePicker.Gallery {
        let iconsValue: Aiuta.Configuration.Features.ImagePicker.Gallery.Icons
        switch icons {
            case .builtIn:
                iconsValue = .init(gallery24: defaultIcons.gallery24)
            case let .custom(custom):
                iconsValue = .init(gallery24: custom.gallery24.uiImage())
        }

        let stringsValue: Aiuta.Configuration.Features.ImagePicker.Gallery.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(galleryButtonSelectPhoto: defaultLocalization.galleryButtonSelectPhoto)
            case let .custom(custom):
                stringsValue = .init(galleryButtonSelectPhoto: custom.galleryButtonSelectPhoto)
        }

        return Aiuta.Configuration.Features.ImagePicker.Gallery(
            icons: iconsValue,
            strings: stringsValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ImagePickerFeature.PredefinedModelFeature {
    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.ImagePicker.PredefinedModels {
        let dataValue: Aiuta.Configuration.Features.ImagePicker.PredefinedModels.Data
        switch data {
            case .none:
                dataValue = .init(preferredCategoryId: nil)
            case let .some(data):
                dataValue = .init(preferredCategoryId: data.preferredCategoryId)
        }

        let iconsValue: Aiuta.Configuration.Features.ImagePicker.PredefinedModels.Icons
        switch icons {
            case .builtIn:
                iconsValue = .init(selectModels24: defaultIcons.selectModels24)
            case let .custom(custom):
                iconsValue = .init(selectModels24: custom.selectModels24.uiImage())
        }

        let stringsValue: Aiuta.Configuration.Features.ImagePicker.PredefinedModels.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(predefinedModelsTitle: defaultLocalization.predefinedModelsTitle, predefinedModelsOr: defaultLocalization.predefinedModelsOr, predefinedModelsEmptyListError: defaultLocalization.predefinedModelsEmptyListError, predefinedModelsCategories: defaultLocalization.predefinedModelsCategories)
            case let .custom(custom):
                stringsValue = .init(
                    predefinedModelsTitle: custom.predefinedModelPageTitle,
                    predefinedModelsOr: custom.predefinedModelOr,
                    predefinedModelsEmptyListError: custom.predefinedModelErrorEmptyModelsList,
                    predefinedModelsCategories: custom.predefinedModelCategories
                )
        }

        return Aiuta.Configuration.Features.ImagePicker.PredefinedModels(
            data: dataValue,
            icons: iconsValue,
            strings: stringsValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ImagePickerFeature.ProtectionDisclaimerFeature {
    func build() -> Aiuta.Configuration.Features.ImagePicker.ProtectionDisclaimer? {
        guard case let .custom(customStrings) = strings else { return nil }

        guard case let .custom(customIcons) = icons else { return nil }

        let iconsValue: Aiuta.Configuration.Features.ImagePicker.ProtectionDisclaimer.Icons
        iconsValue = .init(protection16: customIcons.protection16.uiImage())

        return Aiuta.Configuration.Features.ImagePicker.ProtectionDisclaimer(
            icons: iconsValue,
            strings: .init(protectionDisclaimer: customStrings.protectionDisclaimer)
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ImagePickerFeature.UploadsHistoryFeature {
    func build(with host: AiutaHost, fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.ImagePicker.UploadsHistory {
        let stringsValue: Aiuta.Configuration.Features.ImagePicker.UploadsHistory.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(uploadsHistoryButtonNewPhoto: defaultLocalization.uploadsHistoryButtonNewPhoto, uploadsHistoryTitle: defaultLocalization.uploadsHistoryTitle, uploadsHistoryButtonChangePhoto: defaultLocalization.uploadsHistoryButtonChangePhoto)
            case let .custom(custom):
                stringsValue = .init(
                    uploadsHistoryButtonNewPhoto: custom.uploadsHistoryButtonNewPhoto,
                    uploadsHistoryTitle: custom.uploadsHistoryTitle,
                    uploadsHistoryButtonChangePhoto: custom.uploadsHistoryButtonChangePhoto
                )
        }

        let stylesValue = Aiuta.Configuration.Features.ImagePicker.UploadsHistory.Styles(
            changePhotoButtonStyle: styles.changePhotoButtonStyle.sdkStyle()
        )

        let historyValue: Aiuta.Configuration.Features.ImagePicker.UploadsHistory.HistoryProvider
        switch dataProvider {
            case .builtIn:
                historyValue = .userDefaults
            case .custom:
                historyValue = .dataProvider(host as! Aiuta.Configuration.Features.ImagePicker.UploadsHistory.DataProvider)
        }

        return Aiuta.Configuration.Features.ImagePicker.UploadsHistory(
            strings: stringsValue,
            styles: stylesValue,
            history: historyValue
        )
    }
}

// MARK: - TryOn Feature

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.TryOnFeature {
    func build(with host: AiutaHost,
               fonts: [AiutaPlugin.Font],
               ui userInterface: AiutaPlugin.Configuration.UserInterface) -> Aiuta.Configuration.Features.TryOn {
        let stringsValue: Aiuta.Configuration.Features.TryOn.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(tryOnPageTitle: defaultLocalization.tryOnPageTitle, tryOn: defaultLocalization.tryOn, outfitTitle: defaultLocalization.outfitTitle)
            case let .custom(custom):
                stringsValue = .init(tryOnPageTitle: custom.tryOnPageTitle, tryOn: custom.tryOn, outfitTitle: custom.outfitTitle)
        }

        let iconsValue: Aiuta.Configuration.Features.TryOn.Icons
        switch icons {
            case .builtIn:
                iconsValue = .init(magic20: defaultIcons.magic20)
            case let .custom(custom):
                iconsValue = .init(magic20: custom.tryOn20.uiImage())
        }

        let stylesValue: Aiuta.Configuration.Features.TryOn.Styles
        if let gradientColors = styles.tryOnButtonGradient {
            let colors = gradientColors.compactMap { Aiuta.Color(validHex: $0) }
            stylesValue = .init(tryOnButtonGradient: colors)
        } else {
            stylesValue = .init(tryOnButtonGradient: nil)
        }

        let cartValue = cart.build(with: host)

        return Aiuta.Configuration.Features.TryOn(
            loadingPage: loadingPage.build(with: fonts),
            inputImageValidation: inputImageValidation.build(with: fonts),
            cart: cartValue,
            fitDisclaimer: fitDisclaimer?.build(with: fonts),
            feedback: feedback?.build(with: fonts, ui: userInterface),
            generationsHistory: generationsHistory?.build(with: host, fonts: fonts),
            otherPhoto: otherPhoto?.build(with: fonts),
            icons: iconsValue,
            styles: stylesValue,
            strings: stringsValue,
            toggles: .init(
                allowsBackgroundExecution: toggles.isBackgroundExecutionAllowed,
                tryGeneratePersonSegmentation: toggles.tryGeneratePersonSegmentation
            )
        )
    }
}

// MARK: - TryOn Sub-Features

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.TryOnFeature.LoadingPageFeature {
    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.TryOn.LoadingPage {
        let stringsValue: Aiuta.Configuration.Features.TryOn.LoadingPage.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(tryOnLoadingStatusUploadingImage: defaultLocalization.tryOnLoadingStatusUploadingImage, tryOnLoadingStatusScanningBody: defaultLocalization.tryOnLoadingStatusScanningBody, tryOnLoadingStatusGeneratingOutfit: defaultLocalization.tryOnLoadingStatusGeneratingOutfit)
            case let .custom(custom):
                stringsValue = .init(
                    tryOnLoadingStatusUploadingImage: custom.tryOnLoadingStatusUploadingImage,
                    tryOnLoadingStatusScanningBody: custom.tryOnLoadingStatusScanningBody,
                    tryOnLoadingStatusGeneratingOutfit: custom.tryOnLoadingStatusGeneratingOutfit
                )
        }

        return Aiuta.Configuration.Features.TryOn.LoadingPage(
            strings: stringsValue,
            styles: .init(
                backgroundGradient: styles.loadingStatusBackgroundGradient?.compactMap { Aiuta.Color(validHex: $0) },
                statusStyle: styles.loadingStatusStyle.sdkStyle()
            )
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.TryOnFeature.InputImageValidationFeature {
    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.TryOn.InputValidation {
        let stringsValue: Aiuta.Configuration.Features.TryOn.InputValidation.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(invalidInputImageDescription: defaultLocalization.invalidInputImageDescription, invalidInputImageChangePhotoButton: defaultLocalization.invalidInputImageChangePhotoButton)
            case let .custom(custom):
                stringsValue = .init(
                    invalidInputImageDescription: custom.invalidInputImageDescription,
                    invalidInputImageChangePhotoButton: custom.invalidInputImageChangePhotoButton
                )
        }

        return Aiuta.Configuration.Features.TryOn.InputValidation(strings: stringsValue)
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.TryOnFeature.CartFeature {
    func build(with host: AiutaHost) -> Aiuta.Configuration.Features.TryOn.Cart {
        let stringsValue: Aiuta.Configuration.Features.TryOn.Cart.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(addToCart: defaultLocalization.addToCart)
            case let .custom(custom):
                stringsValue = .init(addToCart: custom.addToCart)
        }

        let outfitValue: Aiuta.Configuration.Features.TryOn.Cart.Outfit?
        if let outfitConfig = outfit {
            outfitValue = outfitConfig.build(with: host)
        } else {
            outfitValue = nil
        }

        return Aiuta.Configuration.Features.TryOn.Cart(
            strings: stringsValue,
            handler: host as! Aiuta.Configuration.Features.TryOn.Cart.Handler,
            outfit: outfitValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.TryOnFeature.CartOutfitFeature {
    func build(with host: AiutaHost) -> Aiuta.Configuration.Features.TryOn.Cart.Outfit {
        let stringsValue: Aiuta.Configuration.Features.TryOn.Cart.Outfit.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(addToCartOutfit: defaultLocalization.addToCartOutfit ?? "Shop the look")
            case let .custom(customStrings):
                stringsValue = .init(addToCartOutfit: customStrings.addToCartOutfit)
        }

        return Aiuta.Configuration.Features.TryOn.Cart.Outfit(
            strings: stringsValue,
            handler: host as! Aiuta.Configuration.Features.TryOn.Cart.Outfit.Handler
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.TryOnFeature.FitDisclaimerFeature {
    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.TryOn.FitDisclaimer {
        let stringsValue: Aiuta.Configuration.Features.TryOn.FitDisclaimer.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(fitDisclaimerTitle: defaultLocalization.fitDisclaimerTitle, fitDisclaimerDescription: defaultLocalization.fitDisclaimerDescription, fitDisclaimerCloseButton: defaultLocalization.fitDisclaimerCloseButton)
            case let .custom(custom):
                stringsValue = .init(
                    fitDisclaimerTitle: custom.fitDisclaimerTitle,
                    fitDisclaimerDescription: custom.fitDisclaimerDescription,
                    fitDisclaimerCloseButton: custom.fitDisclaimerButtonClose
                )
        }

        let iconsValue: Aiuta.Configuration.Features.TryOn.FitDisclaimer.Icons
        switch icons {
            case .builtIn:
                iconsValue = .init(info20: nil)
            case let .custom(custom):
                iconsValue = .init(info20: custom.info20?.uiImage())
        }

        // Note: native SDK 4.4.0 removed typography from FitDisclaimer
        return Aiuta.Configuration.Features.TryOn.FitDisclaimer(
            strings: stringsValue,
            icons: iconsValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.TryOnFeature.FeedbackFeature {
    func build(with fonts: [AiutaPlugin.Font], ui: AiutaPlugin.Configuration.UserInterface) -> Aiuta.Configuration.Features.TryOn.Feedback {
        let stringsValue: Aiuta.Configuration.Features.TryOn.Feedback.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(feedbackTitle: defaultLocalization.feedbackTitle, feedbackOptions: defaultLocalization.feedbackOptions, feedbackButtonSkip: defaultLocalization.feedbackButtonSkip, feedbackButtonSend: defaultLocalization.feedbackButtonSend, feedbackGratitudeText: defaultLocalization.feedbackGratitudeText)
            case let .custom(custom):
                stringsValue = .init(
                    feedbackTitle: custom.feedbackTitle,
                    feedbackOptions: custom.feedbackOptions,
                    feedbackButtonSkip: custom.feedbackButtonSkip,
                    feedbackButtonSend: custom.feedbackButtonSend,
                    feedbackGratitudeText: custom.feedbackGratitudeText
                )
        }

        let iconsValue: Aiuta.Configuration.Features.TryOn.Feedback.Icons
        switch icons {
            case .builtIn:
                iconsValue = .init(like36: defaultIcons.like36, dislike36: defaultIcons.dislike36, gratitude40: nil)
            case let .custom(custom):
                iconsValue = .init(
                    like36: custom.like36.uiImage(),
                    dislike36: custom.dislike36.uiImage(),
                    gratitude40: custom.gratitude40.uiImage()
                )
        }

        return Aiuta.Configuration.Features.TryOn.Feedback(
            other: otherFeedback?.build(with: fonts),
            strings: stringsValue,
            icons: iconsValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.TryOnFeature.FeedbackFeature.FeedbackOtherFeature {
    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.TryOn.Feedback.Other {
        let stringsValue: Aiuta.Configuration.Features.TryOn.Feedback.Other.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(feedbackOptionOther: defaultLocalization.feedbackOptionOther, otherFeedbackTitle: defaultLocalization.otherFeedbackTitle, otherFeedbackButtonSend: defaultLocalization.otherFeedbackButtonSend, otherFeedbackButtonCancel: defaultLocalization.otherFeedbackButtonCancel)
            case let .custom(custom):
                stringsValue = .init(
                    feedbackOptionOther: custom.otherFeedbackOptionOther,
                    otherFeedbackTitle: custom.otherFeedbackTitle,
                    otherFeedbackButtonSend: custom.otherFeedbackButtonSend,
                    otherFeedbackButtonCancel: custom.otherFeedbackButtonCancel
                )
        }

        return Aiuta.Configuration.Features.TryOn.Feedback.Other(strings: stringsValue)
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.TryOnFeature.GenerationsHistoryFeature {
    func build(with host: AiutaHost, fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.TryOn.GenerationsHistory {
        let stringsValue: Aiuta.Configuration.Features.TryOn.GenerationsHistory.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(generationsHistoryPageTitle: defaultLocalization.generationsHistoryPageTitle)
            case let .custom(custom):
                stringsValue = .init(generationsHistoryPageTitle: custom.generationsHistoryPageTitle)
        }

        let iconsValue: Aiuta.Configuration.Features.TryOn.GenerationsHistory.Icons
        switch icons {
            case .builtIn:
                iconsValue = .init(history24: defaultIcons.history24)
            case let .custom(custom):
                iconsValue = .init(history24: custom.history24.uiImage())
        }

        let historyValue: Aiuta.Configuration.Features.TryOn.GenerationsHistory.HistoryProvider
        switch dataProvider {
            case .builtIn:
                historyValue = .userDefaults
            case .custom:
                historyValue = .dataProvider(host as! Aiuta.Configuration.Features.TryOn.GenerationsHistory.DataProvider)
        }

        return Aiuta.Configuration.Features.TryOn.GenerationsHistory(
            icons: iconsValue,
            strings: stringsValue,
            history: historyValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.TryOnFeature.OtherPhotoFeature {
    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.TryOn.ContinueWithOtherPhoto {
        let iconsValue: Aiuta.Configuration.Features.TryOn.ContinueWithOtherPhoto.Icons
        switch icons {
            case .builtIn:
                iconsValue = .init(changePhoto24: defaultIcons.changePhoto24)
            case let .custom(custom):
                iconsValue = .init(changePhoto24: custom.changePhoto24.uiImage())
        }

        return Aiuta.Configuration.Features.TryOn.ContinueWithOtherPhoto(icon: iconsValue)
    }
}

// MARK: - Share Feature

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ShareFeature {
    func build(with host: AiutaHost, fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.Share {
        let iconsValue: Aiuta.Configuration.Features.Share.Icons
        switch icons {
            case .builtIn:
                iconsValue = .init(share24: defaultIcons.share24)
            case let .custom(custom):
                iconsValue = .init(share24: custom.share24.uiImage())
        }

        let stringsValue: Aiuta.Configuration.Features.Share.Strings
        switch strings {
            case .builtIn:
                stringsValue = .init(shareButton: defaultLocalization.shareButton)
            case let .custom(custom):
                stringsValue = .init(shareButton: custom.shareButton)
        }

        let dataProviderValue: (any Aiuta.Configuration.Features.Share.DataProvider)?
        switch dataProvider {
            case .none:
                dataProviderValue = nil
            case .some:
                dataProviderValue = host as? Aiuta.Configuration.Features.Share.DataProvider
        }

        return Aiuta.Configuration.Features.Share(
            watermark: watermark?.build(),
            dataProvider: dataProviderValue,
            icons: iconsValue,
            strings: stringsValue
        )
    }
}

// MARK: - Share Sub-Features

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ShareFeature.WatermarkFeature {
    func build() -> Aiuta.Configuration.Features.Share.Watermark {
        Aiuta.Configuration.Features.Share.Watermark(images: .init(watermark: images.watermark.uiImage()))
    }
}

// MARK: - Wishlist Feature

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.WishlistFeature {
    func build(with host: AiutaHost, fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.Wishlist? {
        guard case let .custom(customStrings) = strings else { return nil }

        let iconsValue: Aiuta.Configuration.Features.Wishlist.Icons
        switch icons {
            case .builtIn:
                guard let wishlist24 = defaultIcons.wishlist24,
                      let wishlistFill24 = defaultIcons.wishlistFill24 else { return nil }
                iconsValue = .init(wishlist24: wishlist24, wishlistFill24: wishlistFill24)
            case let .custom(custom):
                iconsValue = .init(wishlist24: custom.wishlist24.uiImage(), wishlistFill24: custom.wishlistFill24.uiImage())
        }

        return Aiuta.Configuration.Features.Wishlist(
            icons: iconsValue,
            strings: .init(wishlistButtonAdd: customStrings.wishlistButtonAdd),
            dataProvider: host as! Aiuta.Configuration.Features.Wishlist.DataProvider
        )
    }
}

// MARK: - Analytics

@available(iOS 13.0.0, *)
extension Optional where Wrapped == AiutaPlugin.Configuration.Analytics {
    func build(with host: AiutaHost) -> Aiuta.Analytics? {
        switch self {
            case .some: return Aiuta.Analytics(handler: host as! Aiuta.Analytics.Handler)
            case .none: return nil
        }
    }
}

// MARK: - Debug Settings

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.DebugSettings {
    func build() -> Aiuta.Configuration.DebugSettings {
        Aiuta.Configuration.DebugSettings(
            isLoggingEnabled: isLoggingEnabled,
            infoPlistDescriptionsPolicy: infoPlistDescriptionsPolicy.build(),
            emptyStringsPolicy: emptyStringsPolicy.build(),
            listSizePolicy: listSizePolicy.build()
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.DebugSettings.ValidationPolicy {
    func build() -> Aiuta.Configuration.ValidationPolicy {
        switch self {
            case .ignore: return .ignore
            case .warning: return .warning
            case .fatal: return .fatal
        }
    }
}
