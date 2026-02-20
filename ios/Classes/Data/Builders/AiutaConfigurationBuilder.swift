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

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration {
    func buildConfiguration(with host: AiutaHost) -> Aiuta.Configuration {
        unavailableResourcesPolicy = debugSettings.unavailableResourcesPolicy.build()
        return .custom(
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
        .custom(
            theme: theme.build(),
            presentationStyle: presentationStyle,
            swipeToDismissPolicy: swipeToDismiss
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme {
    func build() -> Aiuta.Configuration.UserInterface.Theme {
        .custom(
            color: color.build(),
            label: label.build(with: fonts),
            image: image.build(),
            button: button.build(with: fonts),
            pageBar: pageBar.build(with: fonts),
            bottomSheet: bottomSheet.build(with: fonts),
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
    struct ColorsProvider: Aiuta.Configuration.UserInterface.ColorTheme.Provider {
        let scheme: Aiuta.Configuration.UserInterface.ColorScheme
        let brand: UIColor
        let primary: UIColor
        let secondary: UIColor
        let onDark: UIColor
        let onLight: UIColor
        let background: UIColor
        let screen: UIColor?
        let neutral: UIColor
        let border: UIColor
        let outline: UIColor

        init(_ theme: AiutaPlugin.Configuration.UserInterface.Theme.ColorTheme) {
            switch theme.scheme {
                case .light: scheme = .light
                case .dark: scheme = .dark
            }
            brand = UIColor(argb: theme.brand) ?? .black
            primary = UIColor(argb: theme.primary) ?? .black
            secondary = UIColor(argb: theme.secondary) ?? .black
            onDark = UIColor(argb: theme.onDark) ?? .white
            onLight = UIColor(argb: theme.onLight) ?? .black
            background = UIColor(argb: theme.background) ?? .white
            screen = UIColor(argb: theme.screen) ?? .white
            neutral = UIColor(argb: theme.neutral) ?? .gray
            border = UIColor(argb: theme.border) ?? .lightGray
            outline = UIColor(argb: theme.outline) ?? .darkGray
        }
    }

    func build() -> Aiuta.Configuration.UserInterface.ColorTheme {
        .provider(ColorsProvider(self))
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.LabelTheme {
    struct TypographyProvider: Aiuta.Configuration.UserInterface.LabelTheme.Typography.Provider {
        var titleL: Aiuta.Configuration.TextStyle
        var titleM: Aiuta.Configuration.TextStyle
        var regular: Aiuta.Configuration.TextStyle
        var subtle: Aiuta.Configuration.TextStyle

        init(_ theme: AiutaPlugin.Configuration.UserInterface.Theme.LabelTheme.Typography.Custom, with fonts: [AiutaPlugin.Font]) {
            titleL = theme.titleL.textStyle(with: fonts)
            titleM = theme.titleM.textStyle(with: fonts)
            regular = theme.regular.textStyle(with: fonts)
            subtle = theme.subtle.textStyle(with: fonts)
        }
    }

    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.UserInterface.LabelTheme {
        switch typography {
            case .builtIn: return .default
            case let .custom(theme):
                return .custom(typography: .provider(TypographyProvider(theme, with: fonts)))
        }
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.ImageTheme {
    struct ShapesProvider: Aiuta.Configuration.UserInterface.ImageTheme.Shapes.Provider {
        var imageL: Aiuta.Configuration.Shape
        var imageM: Aiuta.Configuration.Shape

        init(_ theme: AiutaPlugin.Configuration.UserInterface.Theme.ImageTheme.Shapes) {
            imageL = .continuous(radius: theme.imageL)
            imageM = .continuous(radius: theme.imageS)
        }
    }

    func build() -> Aiuta.Configuration.UserInterface.ImageTheme {
        let iconsValue: Aiuta.Configuration.UserInterface.ImageTheme.Icons
        switch icons {
            case .builtIn: iconsValue = .builtIn
            case let .custom(icons):
                iconsValue = .custom(imageError36: icons.imageError36.uiImage())
        }

        return .custom(
            shapes: .provider(ShapesProvider(shapes)),
            icons: iconsValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.ButtonTheme {
    struct TypographyProvider: Aiuta.Configuration.UserInterface.ButtonTheme.Typography.Provider {
        var buttonM: Aiuta.Configuration.TextStyle
        var buttonS: Aiuta.Configuration.TextStyle

        init(_ theme: AiutaPlugin.Configuration.UserInterface.Theme.ButtonTheme.Typography.Custom, with fonts: [AiutaPlugin.Font]) {
            buttonM = theme.buttonM.textStyle(with: fonts)
            buttonS = theme.buttonS.textStyle(with: fonts)
        }
    }

    struct ShapesProvider: Aiuta.Configuration.UserInterface.ButtonTheme.Shapes.Provider {
        var buttonM: Aiuta.Configuration.Shape
        var buttonS: Aiuta.Configuration.Shape

        init(_ theme: AiutaPlugin.Configuration.UserInterface.Theme.ButtonTheme.Shapes) {
            buttonM = .continuous(radius: theme.buttonM)
            buttonS = .continuous(radius: theme.buttonS)
        }
    }

    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.UserInterface.ButtonTheme {
        let typographyValue: Aiuta.Configuration.UserInterface.ButtonTheme.Typography
        switch typography {
            case .builtIn: typographyValue = .default
            case let .custom(theme):
                typographyValue = .provider(TypographyProvider(theme, with: fonts))
        }

        return .custom(
            typography: typographyValue,
            shapes: .provider(ShapesProvider(shapes))
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.PageBarTheme {
    struct TypographyProvider: Aiuta.Configuration.UserInterface.PageBarTheme.Typography.Provider {
        let pageTitle: Aiuta.Configuration.TextStyle

        init(_ custom: AiutaPlugin.Configuration.UserInterface.Theme.PageBarTheme.Typography.Custom, fonts: [AiutaPlugin.Font]) {
            pageTitle = custom.pageTitle.textStyle(with: fonts)
        }
    }

    struct IconsProvider: Aiuta.Configuration.UserInterface.PageBarTheme.Icons.Provider {
        let back24: UIImage
        let close24: UIImage

        init(_ custom: AiutaPlugin.Configuration.UserInterface.Theme.PageBarTheme.Icons.Custom) {
            back24 = custom.back24.uiImage()
            close24 = custom.close24.uiImage()
        }
    }

    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.UserInterface.PageBarTheme {
        let typographyValue: Aiuta.Configuration.UserInterface.PageBarTheme.Typography
        switch typography {
            case .builtIn:
                typographyValue = .default
            case let .custom(custom):
                typographyValue = .provider(TypographyProvider(custom, fonts: fonts))
        }

        let iconsValue: Aiuta.Configuration.UserInterface.PageBarTheme.Icons
        switch icons {
            case .builtIn:
                iconsValue = .builtIn
            case let .custom(custom):
                iconsValue = .provider(IconsProvider(custom))
        }

        let settingsValue: Aiuta.Configuration.UserInterface.PageBarTheme.Settings = .custom(
            preferCloseButtonOnTheRight: toggles.preferCloseButtonOnTheRight
        )

        return .custom(
            typography: typographyValue,
            icons: iconsValue,
            settings: settingsValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.BottomSheetTheme {
    struct TypographyProvider: Aiuta.Configuration.UserInterface.BottomSheetTheme.Typography.Provider {
        let iconButton: Aiuta.Configuration.TextStyle

        init(_ custom: AiutaPlugin.Configuration.UserInterface.Theme.BottomSheetTheme.Typography.Custom, fonts: [AiutaPlugin.Font]) {
            iconButton = custom.iconButton.textStyle(with: fonts)
        }
    }

    struct ShapesProvider: Aiuta.Configuration.UserInterface.BottomSheetTheme.Shapes.Provider {
        let bottomSheet: Aiuta.Configuration.Shape

        init(_ shapes: AiutaPlugin.Configuration.UserInterface.Theme.BottomSheetTheme.Shapes) {
            bottomSheet = .continuous(radius: shapes.bottomSheet)
        }
    }

    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.UserInterface.BottomSheetTheme {
        let typographyValue: Aiuta.Configuration.UserInterface.BottomSheetTheme.Typography
        switch typography {
            case .builtIn:
                typographyValue = .default
            case let .custom(custom):
                typographyValue = .provider(TypographyProvider(custom, fonts: fonts))
        }

        let shapesValue: Aiuta.Configuration.UserInterface.BottomSheetTheme.Shapes = .provider(ShapesProvider(shapes))

        let grabberValue: Aiuta.Configuration.UserInterface.BottomSheetTheme.Grabber = .custom(
            width: CGFloat(grabber.width),
            height: CGFloat(grabber.height),
            offset: CGFloat(grabber.topPadding)
        )

        let settingsValue: Aiuta.Configuration.UserInterface.BottomSheetTheme.Settings = .custom(
            extendDelimitersToTheRight: toggles.extendDelimitersToTheRight,
            extendDelimitersToTheLeft: toggles.extendDelimitersToTheLeft
        )

        return .custom(
            typography: typographyValue,
            shapes: shapesValue,
            grabber: grabberValue,
            settings: settingsValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.ActivityIndicatorTheme {
    struct IconsProvider: Aiuta.Configuration.UserInterface.ActivityIndicatorTheme.Icons.Provider {
        let loading14: UIImage

        init(_ custom: AiutaPlugin.Configuration.UserInterface.Theme.ActivityIndicatorTheme.Icons.Custom) {
            loading14 = custom.loading14.uiImage()
        }
    }

    struct ColorsProvider: Aiuta.Configuration.UserInterface.ActivityIndicatorTheme.Colors.Provider {
        let overlay: UIColor

        init(_ colors: AiutaPlugin.Configuration.UserInterface.Theme.ActivityIndicatorTheme.Colors) {
            overlay = UIColor(argb: colors.overlay) ?? .clear
        }
    }

    func build() -> Aiuta.Configuration.UserInterface.ActivityIndicatorTheme {
        let iconsValue: Aiuta.Configuration.UserInterface.ActivityIndicatorTheme.Icons
        switch icons {
            case .builtIn:
                iconsValue = .system
            case let .custom(custom):
                iconsValue = .provider(IconsProvider(custom))
        }

        let colorsValue: Aiuta.Configuration.UserInterface.ActivityIndicatorTheme.Colors = .provider(ColorsProvider(colors))

        let settingsValue: Aiuta.Configuration.UserInterface.ActivityIndicatorTheme.Settings = .custom(
            indicationDelay: settings.indicationDelay,
            spinDuration: settings.spinDuration
        )

        return .custom(
            icons: iconsValue,
            colors: colorsValue,
            settings: settingsValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.SelectionSnackbarTheme {
    struct StringsProvider: Aiuta.Configuration.UserInterface.SelectionSnackbarTheme.Strings.Provider {
        let select: String
        let cancel: String
        let selectAll: String
        let unselectAll: String

        init(_ custom: AiutaPlugin.Configuration.UserInterface.Theme.SelectionSnackbarTheme.Strings.Custom) {
            select = custom.select
            cancel = custom.cancel
            selectAll = custom.selectAll
            unselectAll = custom.unselectAll
        }
    }

    struct IconsProvider: Aiuta.Configuration.UserInterface.SelectionSnackbarTheme.Icons.Provider {
        let trash24: UIImage
        let check20: UIImage

        init(_ custom: AiutaPlugin.Configuration.UserInterface.Theme.SelectionSnackbarTheme.Icons.Custom) {
            trash24 = custom.trash24.uiImage()
            check20 = custom.check20.uiImage()
        }
    }

    struct ColorsProvider: Aiuta.Configuration.UserInterface.SelectionSnackbarTheme.Colors.Provider {
        let selectionBackground: UIColor

        init(_ colors: AiutaPlugin.Configuration.UserInterface.Theme.SelectionSnackbarTheme.Colors) {
            selectionBackground = UIColor(argb: colors.selectionBackground) ?? .clear
        }
    }

    func build() -> Aiuta.Configuration.UserInterface.SelectionSnackbarTheme {
        let stringsValue: Aiuta.Configuration.UserInterface.SelectionSnackbarTheme.Strings
        switch strings {
            case .builtIn:
                stringsValue = .default
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        let iconsValue: Aiuta.Configuration.UserInterface.SelectionSnackbarTheme.Icons
        switch icons {
            case .builtIn:
                iconsValue = .builtIn
            case let .custom(custom):
                iconsValue = .provider(IconsProvider(custom))
        }

        let colorsValue: Aiuta.Configuration.UserInterface.SelectionSnackbarTheme.Colors = .provider(ColorsProvider(colors))

        return .custom(
            strings: stringsValue,
            icons: iconsValue,
            colors: colorsValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.ErrorSnackbarTheme {
    struct StringsProvider: Aiuta.Configuration.UserInterface.ErrorSnackbarTheme.Strings.Provider {
        let defaultErrorMessage: String
        let tryAgainButton: String

        init(_ custom: AiutaPlugin.Configuration.UserInterface.Theme.ErrorSnackbarTheme.Strings.Custom) {
            defaultErrorMessage = custom.defaultErrorMessage
            tryAgainButton = custom.tryAgainButton
        }
    }

    struct IconsProvider: Aiuta.Configuration.UserInterface.ErrorSnackbarTheme.Icons.Provider {
        let error36: UIImage

        init(_ custom: AiutaPlugin.Configuration.UserInterface.Theme.ErrorSnackbarTheme.Icons.Custom) {
            error36 = custom.error36.uiImage()
        }
    }

    struct ColorsProvider: Aiuta.Configuration.UserInterface.ErrorSnackbarTheme.Colors.Provider {
        let errorBackground: UIColor
        let errorPrimary: UIColor

        init(_ colors: AiutaPlugin.Configuration.UserInterface.Theme.ErrorSnackbarTheme.Colors) {
            errorBackground = UIColor(argb: colors.errorBackground) ?? .clear
            errorPrimary = UIColor(argb: colors.errorPrimary) ?? .clear
        }
    }

    func build() -> Aiuta.Configuration.UserInterface.ErrorSnackbarTheme {
        let stringsValue: Aiuta.Configuration.UserInterface.ErrorSnackbarTheme.Strings
        switch strings {
            case .builtIn:
                stringsValue = .default
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        let iconsValue: Aiuta.Configuration.UserInterface.ErrorSnackbarTheme.Icons
        switch icons {
            case .builtIn:
                iconsValue = .builtIn
            case let .custom(custom):
                iconsValue = .provider(IconsProvider(custom))
        }

        let colorsValue: Aiuta.Configuration.UserInterface.ErrorSnackbarTheme.Colors = .provider(ColorsProvider(colors))

        return .custom(
            strings: stringsValue,
            icons: iconsValue,
            colors: colorsValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.ProductBarTheme {
    struct TypographyProvider: Aiuta.Configuration.UserInterface.ProductBarTheme.Typography.Provider {
        let product: Aiuta.Configuration.TextStyle
        let brand: Aiuta.Configuration.TextStyle

        init(_ custom: AiutaPlugin.Configuration.UserInterface.Theme.ProductBarTheme.Typography.Custom, fonts: [AiutaPlugin.Font]) {
            product = custom.product.textStyle(with: fonts)
            brand = custom.brand.textStyle(with: fonts)
        }
    }

    struct IconsProvider: Aiuta.Configuration.UserInterface.ProductBarTheme.Icons.Provider {
        let arrow16: UIImage

        init(_ custom: AiutaPlugin.Configuration.UserInterface.Theme.ProductBarTheme.Icons.Custom) {
            arrow16 = custom.arrow16.uiImage()
        }
    }

    struct PricesTypographyProvider: Aiuta.Configuration.UserInterface.ProductBarTheme.Prices.Typography.Provider {
        let price: Aiuta.Configuration.TextStyle

        init(_ custom: AiutaPlugin.Configuration.UserInterface.Theme.ProductBarTheme.Prices.Typography.Custom, fonts: [AiutaPlugin.Font]) {
            price = custom.price.textStyle(with: fonts)
        }
    }

    struct PricesColorsProvider: Aiuta.Configuration.UserInterface.ProductBarTheme.Prices.Colors.Provider {
        let discountedPrice: UIColor

        init(_ colors: AiutaPlugin.Configuration.UserInterface.Theme.ProductBarTheme.Prices.Colors) {
            discountedPrice = UIColor(argb: colors.discountedPrice) ?? .clear
        }
    }

    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.UserInterface.ProductBarTheme {
        let typographyValue: Aiuta.Configuration.UserInterface.ProductBarTheme.Typography
        switch typography {
            case .builtIn:
                typographyValue = .default
            case let .custom(custom):
                typographyValue = .provider(TypographyProvider(custom, fonts: fonts))
        }

        let iconsValue: Aiuta.Configuration.UserInterface.ProductBarTheme.Icons
        switch icons {
            case .builtIn:
                iconsValue = .builtIn
            case let .custom(custom):
                iconsValue = .provider(IconsProvider(custom))
        }

        let settingsValue: Aiuta.Configuration.UserInterface.ProductBarTheme.Settings = .custom(
            applyProductFirstImageExtraPadding: toggles.applyProductFirstImageExtraPadding
        )

        let pricesValue: Aiuta.Configuration.UserInterface.ProductBarTheme.Prices
        if let pricesConfig = prices {
            let pricesTypographyValue: Aiuta.Configuration.UserInterface.ProductBarTheme.Prices.Typography
            switch pricesConfig.typography {
                case .builtIn:
                    pricesTypographyValue = .default
                case let .custom(custom):
                    pricesTypographyValue = .provider(PricesTypographyProvider(custom, fonts: fonts))
            }

            let pricesColorsValue: Aiuta.Configuration.UserInterface.ProductBarTheme.Prices.Colors = .provider(PricesColorsProvider(pricesConfig.colors))

            pricesValue = .custom(
                typography: pricesTypographyValue,
                colors: pricesColorsValue
            )
        } else {
            pricesValue = .none
        }

        return .custom(
            icons: iconsValue,
            typography: typographyValue,
            settings: settingsValue,
            prices: pricesValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface.Theme.PowerBarTheme {
    struct StringsProvider: Aiuta.Configuration.UserInterface.PowerBarTheme.Strings.Provider {
        let poweredByAiuta: String

        init(_ custom: AiutaPlugin.Configuration.UserInterface.Theme.PowerBarTheme.Strings.Custom) {
            poweredByAiuta = custom.poweredByAiuta
        }
    }

    struct ColorsProvider: Aiuta.Configuration.UserInterface.PowerBarTheme.Colors.Provider {
        let aiuta: Aiuta.Configuration.UserInterface.PowerBarTheme.Colors.Scheme

        init(_ colors: AiutaPlugin.Configuration.UserInterface.Theme.PowerBarTheme.Colors) {
            switch colors.aiuta {
                case .standard:
                    aiuta = .default
                case .primary:
                    aiuta = .primary
            }
        }
    }

    func build() -> Aiuta.Configuration.UserInterface.PowerBarTheme {
        let stringsValue: Aiuta.Configuration.UserInterface.PowerBarTheme.Strings
        switch strings {
            case .builtIn:
                stringsValue = .default
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        let colorsValue: Aiuta.Configuration.UserInterface.PowerBarTheme.Colors = .provider(ColorsProvider(colors))

        return .custom(
            strings: stringsValue,
            colors: colorsValue
        )
    }
}

// MARK: - Features

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.Features {
    func build(with host: AiutaHost, ui: AiutaPlugin.Configuration.UserInterface) -> Aiuta.Configuration.Features {
        return .custom(
            welcomeScreen: welcomeScreen?.build(with: ui.theme.fonts) ?? .none,
            onboarding: onboarding?.build(with: host.dataProviders, shapes: ui.theme.image.shapes) ?? .none,
            consent: consent?.build(with: host.dataProviders, fonts: ui.theme.fonts) ?? .none,
            imagePicker: imagePicker.build(with: host.dataProviders, fonts: ui.theme.fonts),
            tryOn: tryOn.build(with: host.handlers, dataProvider: host.dataProviders, fonts: ui.theme.fonts, ui: ui),
            share: share?.build(with: host.dataProviders, fonts: ui.theme.fonts) ?? .default,
            wishlist: wishlist?.build(with: host.dataProviders, fonts: ui.theme.fonts) ?? .none
        )
    }
}

// MARK: - WelcomeScreen Feature

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.WelcomeScreenFeature {
    struct ImagesProvider: Aiuta.Configuration.Features.WelcomeScreen.Images.Provider {
        let welcomeBackground: UIImage
        init(_ images: AiutaPlugin.Configuration.WelcomeScreenFeature.Images) {
            welcomeBackground = images.welcomeBackground.uiImage()
        }
    }

    struct IconsProvider: Aiuta.Configuration.Features.WelcomeScreen.Icons.Provider {
        let welcome82: UIImage
        init(_ icons: AiutaPlugin.Configuration.WelcomeScreenFeature.Icons) {
            welcome82 = icons.welcome82.uiImage()
        }
    }

    struct StringsProvider: Aiuta.Configuration.Features.WelcomeScreen.Strings.Provider {
        let welcomeTitle: String
        let welcomeDescription: String
        let welcomeButtonStart: String
        init(_ custom: AiutaPlugin.Configuration.WelcomeScreenFeature.Strings.Custom) {
            welcomeTitle = custom.welcomeTitle
            welcomeDescription = custom.welcomeDescription
            welcomeButtonStart = custom.welcomeButtonStart
        }
    }

    struct TypographyProvider: Aiuta.Configuration.Features.WelcomeScreen.Typography.Provider {
        let welcomeTitle: Aiuta.Configuration.TextStyle
        let welcomeDescription: Aiuta.Configuration.TextStyle
        init(_ custom: AiutaPlugin.Configuration.WelcomeScreenFeature.Typography.Custom, fonts: [AiutaPlugin.Font]) {
            welcomeTitle = custom.welcomeTitle.textStyle(with: fonts)
            welcomeDescription = custom.welcomeDescription.textStyle(with: fonts)
        }
    }

    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.WelcomeScreen {
        let imagesValue: Aiuta.Configuration.Features.WelcomeScreen.Images = .provider(ImagesProvider(images))
        let iconsValue: Aiuta.Configuration.Features.WelcomeScreen.Icons = .provider(IconsProvider(icons))

        let stringsValue: Aiuta.Configuration.Features.WelcomeScreen.Strings
        switch strings {
            case .builtIn:
                stringsValue = .custom(welcomeTitle: "", welcomeDescription: "", welcomeButtonStart: "")
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        let typographyValue: Aiuta.Configuration.Features.WelcomeScreen.Typography
        switch typography {
            case .builtIn:
                typographyValue = .default
            case let .custom(custom):
                typographyValue = .provider(TypographyProvider(custom, fonts: fonts))
        }

        return .custom(
            images: imagesValue,
            icons: iconsValue,
            strings: stringsValue,
            typography: typographyValue
        )
    }
}

// MARK: - Onboarding Feature

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.OnboardingFeature {
    struct StringsProvider: Aiuta.Configuration.Features.Onboarding.Strings.Provider {
        let onboardingButtonNext: String
        let onboardingButtonStart: String
        init(_ custom: AiutaPlugin.Configuration.OnboardingFeature.Strings.Custom) {
            onboardingButtonNext = custom.onboardingButtonNext
            onboardingButtonStart = custom.onboardingButtonStart
        }
    }

    struct ShapesProvider: Aiuta.Configuration.Features.Onboarding.Shapes.Provider {
        let onboardingImageL: Aiuta.Configuration.Shape
        let onboardingImageS: Aiuta.Configuration.Shape
        init(_ shapes: AiutaPlugin.Configuration.OnboardingFeature.Shapes) {
            onboardingImageL = .continuous(radius: shapes.onboardingImageL)
            onboardingImageS = .continuous(radius: shapes.onboardingImageS)
        }
    }

    func build(with dp: Aiuta.Configuration.DataProviders, shapes: AiutaPlugin.Configuration.UserInterface.Theme.ImageTheme.Shapes) -> Aiuta.Configuration.Features.Onboarding {
        let stringsValue: Aiuta.Configuration.Features.Onboarding.Strings
        switch strings {
            case .builtIn:
                stringsValue = .default
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        let shapesValue: Aiuta.Configuration.Features.Onboarding.Shapes = .provider(ShapesProvider(self.shapes))
        let dataProviderValue: Aiuta.Configuration.Features.Onboarding.StateProvider
        switch dataProvider {
            case .builtIn: dataProviderValue = .userDefaults
            case .custom: dataProviderValue = .dataProvider(dp)
        }

        return .custom(
            howItWorks: howItWorksPage.build(),
            bestResults: bestResultsPage?.build() ?? .none,
            strings: stringsValue,
            shapes: shapesValue,
            data: dataProviderValue
        )
    }
}

// MARK: - Onboarding Sub-Features

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.OnboardingFeature.HowItWorksPageFeature {
    struct ImagesProvider: Aiuta.Configuration.Features.Onboarding.HowItWorks.Images.Provider {
        let onboardingHowItWorksItems: [Aiuta.Configuration.Features.Onboarding.HowItWorks.Images.Item]
        init(_ custom: AiutaPlugin.Configuration.OnboardingFeature.HowItWorksPageFeature.Images.Custom) {
            onboardingHowItWorksItems = custom.onboardingHowItWorksItems.map { item in
                Aiuta.Configuration.Features.Onboarding.HowItWorks.Images.Item(
                    itemPhoto: item.itemPhoto.uiImage(),
                    itemPreview: item.itemPreview.uiImage()
                )
            }
        }
    }

    struct StringsProvider: Aiuta.Configuration.Features.Onboarding.HowItWorks.Strings.Provider {
        let onboardingHowItWorksPageTitle: String?
        let onboardingHowItWorksTitle: String
        let onboardingHowItWorksDescription: String
        init(_ custom: AiutaPlugin.Configuration.OnboardingFeature.HowItWorksPageFeature.Strings.Custom) {
            onboardingHowItWorksPageTitle = custom.onboardingHowItWorksPageTitle
            onboardingHowItWorksTitle = custom.onboardingHowItWorksTitle
            onboardingHowItWorksDescription = custom.onboardingHowItWorksDescription
        }
    }

    func build() -> Aiuta.Configuration.Features.Onboarding.HowItWorks {
        let imagesValue: Aiuta.Configuration.Features.Onboarding.HowItWorks.Images
        switch images {
            case .builtIn:
                imagesValue = .builtIn
            case let .custom(custom):
                imagesValue = .provider(ImagesProvider(custom))
        }

        let stringsValue: Aiuta.Configuration.Features.Onboarding.HowItWorks.Strings
        switch strings {
            case .builtIn:
                stringsValue = .default
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        return .custom(
            images: imagesValue,
            strings: stringsValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.OnboardingFeature.BestResultsPageFeature {
    struct ImagesProvider: Aiuta.Configuration.Features.Onboarding.BestResults.Images.Provider {
        let onboardingBestResultsGood: [UIImage]
        let onboardingBestResultsBad: [UIImage]
        init(_ images: AiutaPlugin.Configuration.OnboardingFeature.BestResultsPageFeature.Images) {
            onboardingBestResultsGood = images.onboardingBestResultsGood.map { $0.uiImage() }
            onboardingBestResultsBad = images.onboardingBestResultsBad.map { $0.uiImage() }
        }
    }

    struct IconsProvider: Aiuta.Configuration.Features.Onboarding.BestResults.Icons.Provider {
        let onboardingBestResultsGood24: UIImage
        let onboardingBestResultsBad24: UIImage
        init(_ icons: AiutaPlugin.Configuration.OnboardingFeature.BestResultsPageFeature.Icons) {
            onboardingBestResultsGood24 = icons.onboardingBestResultsGood24.uiImage()
            onboardingBestResultsBad24 = icons.onboardingBestResultsBad24.uiImage()
        }
    }

    struct StringsProvider: Aiuta.Configuration.Features.Onboarding.BestResults.Strings.Provider {
        let onboardingBestResultsPageTitle: String?
        let onboardingBestResultsTitle: String
        let onboardingBestResultsDescription: String
        init(_ custom: AiutaPlugin.Configuration.OnboardingFeature.BestResultsPageFeature.Strings.Custom) {
            onboardingBestResultsPageTitle = custom.onboardingBestResultsPageTitle
            onboardingBestResultsTitle = custom.onboardingBestResultsTitle
            onboardingBestResultsDescription = custom.onboardingBestResultsDescription
        }
    }

    func build() -> Aiuta.Configuration.Features.Onboarding.BestResults {
        let imagesValue: Aiuta.Configuration.Features.Onboarding.BestResults.Images = .provider(ImagesProvider(images))
        let iconsValue: Aiuta.Configuration.Features.Onboarding.BestResults.Icons = .provider(IconsProvider(icons))

        let stringsValue: Aiuta.Configuration.Features.Onboarding.BestResults.Strings
        switch strings {
            case .builtIn:
                stringsValue = .custom(
                    onboardingBestResultsPageTitle: nil,
                    onboardingBestResultsTitle: "",
                    onboardingBestResultsDescription: ""
                )
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        let togglesValue: Aiuta.Configuration.Features.Onboarding.BestResults.Toggles = .custom(
            reduceShadows: styles.reduceOnboardingBestResultsShadows
        )

        return .custom(
            images: imagesValue,
            icons: iconsValue,
            strings: stringsValue,
            toggles: togglesValue
        )
    }
}

// MARK: - Consent Feature

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ConsentFeature {
    func build(with dataProvider: Aiuta.Configuration.DataProviders, fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.Consent {
        switch self {
            case let .embeddedIntoOnboarding(embedded):
                return embedded.build()
            case let .standaloneOnboardingPage(standalone):
                return standalone.build(with: dataProvider)
            case let .standaloneImagePickerPage(standalone):
                return standalone.build(with: dataProvider, isImagePickerPage: true)
        }
    }
}

// MARK: - Consent Sub-Features

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ConsentFeature.EmbeddedIntoOnboardingFeature {
    struct StringsProvider: Aiuta.Configuration.Features.Consent.Embedded.Strings.Provider {
        let consentHtml: String
        init(_ custom: AiutaPlugin.Configuration.ConsentFeature.EmbeddedStrings.Custom) {
            consentHtml = custom.consentHtml
        }
    }

    func build() -> Aiuta.Configuration.Features.Consent {
        let stringsValue: Aiuta.Configuration.Features.Consent.Embedded.Strings
        switch strings {
            case let .builtIn(builtIn):
                stringsValue = .custom(consentHtml: "By continuing, you agree to our <a href=\"\(builtIn.termsOfServiceUrl)\">Terms of Service</a>")
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        return .embeddedIntoOnboarding(strings: stringsValue)
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ConsentFeature.StandalonePageFeature {
    struct StringsProvider: Aiuta.Configuration.Features.Consent.Standalone.Strings.Provider {
        let consentPageTitle: String?
        let consentTitle: String
        let consentDescriptionHtml: String
        let consentFooterHtml: String?
        let consentButtonAccept: String
        let consentButtonReject: String?
        init(_ custom: AiutaPlugin.Configuration.ConsentFeature.StandaloneStrings.Custom) {
            consentPageTitle = custom.consentPageTitle
            consentTitle = custom.consentTitle
            consentDescriptionHtml = custom.consentDescriptionHtml
            consentFooterHtml = custom.consentFooterHtml
            consentButtonAccept = custom.consentButtonAccept
            consentButtonReject = custom.consentButtonReject
        }
    }

    struct IconsProvider: Aiuta.Configuration.Features.Consent.Standalone.Icons.Provider {
        let consentTitle24: UIImage?
        init(_ custom: AiutaPlugin.Configuration.ConsentFeature.StandaloneIcons.Custom) {
            consentTitle24 = custom.consentTitle24.uiImage()
        }
    }

    func build(with dp: Aiuta.Configuration.DataProviders, isImagePickerPage: Bool = false) -> Aiuta.Configuration.Features.Consent {
        let stringsValue: Aiuta.Configuration.Features.Consent.Standalone.Strings
        switch strings {
            case .builtIn:
                stringsValue = .custom(
                    consentPageTitle: "Consent",
                    consentTitle: "Data Processing Agreement",
                    consentDescriptionHtml: "Please review and accept the terms below to continue.",
                    consentFooterHtml: nil,
                    consentButtonAccept: "Accept",
                    consentButtonReject: "Reject"
                )
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        let iconsValue: Aiuta.Configuration.Features.Consent.Standalone.Icons
        switch icons {
            case .builtIn:
                iconsValue = .default
            case let .custom(custom):
                iconsValue = .provider(IconsProvider(custom))
        }

        let stylesValue: Aiuta.Configuration.Features.Consent.Standalone.Styles = .custom(
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
            case .custom: consentProvider = .dataProvider(consents: consents, dp)
        }

        if isImagePickerPage {
            return .standaloneImagePickerPage(
                strings: stringsValue,
                icons: iconsValue,
                styles: stylesValue,
                data: consentProvider
            )
        } else {
            return .standaloneOnboardingPage(
                strings: stringsValue,
                icons: iconsValue,
                styles: stylesValue,
                data: consentProvider
            )
        }
    }
}

// MARK: - ImagePicker Feature

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ImagePickerFeature {
    struct ImagesProvider: Aiuta.Configuration.Features.ImagePicker.Images.Provider {
        var imagePickerExamples: [UIImage]

        init(_ images: AiutaPlugin.Configuration.ImagePickerFeature.Images.Custom) {
            imagePickerExamples = images.examples.map { $0.uiImage() }
        }
    }

    struct StringsProvider: Aiuta.Configuration.Features.ImagePicker.Strings.Provider {
        var imagePickerTitle: String
        var imagePickerDescription: String
        var imagePickerButtonUploadPhoto: String

        init(_ custom: AiutaPlugin.Configuration.ImagePickerFeature.Strings.Custom) {
            imagePickerTitle = custom.imagePickerTitleEmpty
            imagePickerDescription = custom.imagePickerDescriptionEmpty
            imagePickerButtonUploadPhoto = custom.imagePickerButtonUploadImage
        }
    }

    func build(with dataProvider: Aiuta.Configuration.DataProviders, fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.ImagePicker {
        let imagesValue: Aiuta.Configuration.Features.ImagePicker.Images
        switch images {
            case .builtIn:
                imagesValue = .builtIn
            case let .custom(custom):
                imagesValue = .provider(ImagesProvider(custom))
        }

        let stringsValue: Aiuta.Configuration.Features.ImagePicker.Strings
        switch strings {
            case .builtIn:
                stringsValue = .default
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        return .custom(
            camera: camera?.build(with: fonts) ?? .none,
            photoGallery: photoGallery.build(with: fonts),
            predefinedModels: predefinedModels?.build(with: fonts) ?? .none,
            uploadsHistory: uploadsHistory?.build(with: dataProvider, fonts: fonts) ?? .none,
            images: imagesValue,
            strings: stringsValue
        )
    }
}

// MARK: - ImagePicker Sub-Features

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ImagePickerFeature.CameraFeature {
    struct IconsProvider: Aiuta.Configuration.Features.ImagePicker.Camera.Icons.Provider {
        let camera24: UIImage
        init(_ custom: AiutaPlugin.Configuration.ImagePickerFeature.CameraIcons.Custom) {
            camera24 = custom.camera24.uiImage()
        }
    }

    struct StringsProvider: Aiuta.Configuration.Features.ImagePicker.Camera.Strings.Provider {
        var cameraButtonTakePhoto: String
        var cameraPermissionTitle: String
        var cameraPermissionDescription: String
        var cameraPermissionButtonOpenSettings: String

        init(_ custom: AiutaPlugin.Configuration.ImagePickerFeature.CameraStrings.Custom) {
            cameraButtonTakePhoto = custom.cameraButtonTakePhoto
            cameraPermissionTitle = custom.cameraPermissionTitle
            cameraPermissionDescription = custom.cameraPermissionDescription
            cameraPermissionButtonOpenSettings = custom.cameraPermissionButtonOpenSettings
        }
    }

    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.ImagePicker.Camera {
        let iconsValue: Aiuta.Configuration.Features.ImagePicker.Camera.Icons
        switch icons {
            case .builtIn:
                iconsValue = .builtIn
            case let .custom(custom):
                iconsValue = .provider(IconsProvider(custom))
        }

        let stringsValue: Aiuta.Configuration.Features.ImagePicker.Camera.Strings
        switch strings {
            case .builtIn:
                stringsValue = .default
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        return .custom(
            icons: iconsValue,
            strings: stringsValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ImagePickerFeature.PhotoGalleryFeature {
    struct IconsProvider: Aiuta.Configuration.Features.ImagePicker.Gallery.Icons.Provider {
        var gallery24: UIImage

        init(_ custom: AiutaPlugin.Configuration.ImagePickerFeature.PhotoGalleryIcons.Custom) {
            gallery24 = custom.gallery24.uiImage()
        }
    }

    struct StringsProvider: Aiuta.Configuration.Features.ImagePicker.Gallery.Strings.Provider {
        var galleryButtonSelectPhoto: String

        init(_ custom: AiutaPlugin.Configuration.ImagePickerFeature.PhotoGalleryStrings.Custom) {
            galleryButtonSelectPhoto = custom.galleryButtonSelectPhoto
        }
    }

    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.ImagePicker.Gallery {
        let iconsValue: Aiuta.Configuration.Features.ImagePicker.Gallery.Icons
        switch icons {
            case .builtIn:
                iconsValue = .builtIn
            case let .custom(custom):
                iconsValue = .provider(IconsProvider(custom))
        }

        let stringsValue: Aiuta.Configuration.Features.ImagePicker.Gallery.Strings
        switch strings {
            case .builtIn:
                stringsValue = .default
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        return .custom(
            icons: iconsValue,
            strings: stringsValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ImagePickerFeature.PredefinedModelFeature {
    struct IconsProvider: Aiuta.Configuration.Features.ImagePicker.PredefinedModels.Icons.Provider {
        let selectModels24: UIImage

        init(_ custom: AiutaPlugin.Configuration.ImagePickerFeature.PredefinedModelIcons.Custom) {
            selectModels24 = custom.selectModels24.uiImage()
        }
    }

    struct StringsProvider: Aiuta.Configuration.Features.ImagePicker.PredefinedModels.Strings.Provider {
        let predefinedModelsTitle: String
        let predefinedModelsOr: String
        let predefinedModelsEmptyListError: String
        let predefinedModelsCategories: [String: String]

        init(_ custom: AiutaPlugin.Configuration.ImagePickerFeature.PredefinedModelStrings.Custom) {
            predefinedModelsTitle = custom.predefinedModelsTitle
            predefinedModelsOr = custom.predefinedModelsOr
            predefinedModelsEmptyListError = custom.predefinedModelsEmptyListError
            predefinedModelsCategories = custom.predefinedModelsCategories
        }
    }

    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.ImagePicker.PredefinedModels {
        let dataValue: Aiuta.Configuration.Features.ImagePicker.PredefinedModels.Data
        switch data {
            case .none:
                dataValue = .default
            case let .some(data):
                dataValue = .custom(preferredCategoryId: data.preferredCategoryId)
        }

        let iconsValue: Aiuta.Configuration.Features.ImagePicker.PredefinedModels.Icons
        switch icons {
            case .builtIn:
                iconsValue = .builtIn
            case let .custom(custom):
                iconsValue = .provider(IconsProvider(custom))
        }

        let stringsValue: Aiuta.Configuration.Features.ImagePicker.PredefinedModels.Strings
        switch strings {
            case .builtIn:
                stringsValue = .default
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        return .custom(
            data: dataValue,
            icons: iconsValue,
            strings: stringsValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ImagePickerFeature.UploadsHistoryFeature {
    struct StringsProvider: Aiuta.Configuration.Features.ImagePicker.UploadsHistory.Strings.Provider {
        let uploadsHistoryButtonNewPhoto: String
        let uploadsHistoryTitle: String
        let uploadsHistoryButtonChangePhoto: String

        init(_ custom: AiutaPlugin.Configuration.ImagePickerFeature.UploadsHistoryStrings.Custom) {
            uploadsHistoryButtonNewPhoto = custom.uploadsHistoryButtonNewPhoto
            uploadsHistoryTitle = custom.uploadsHistoryTitle
            uploadsHistoryButtonChangePhoto = custom.uploadsHistoryButtonChangePhoto
        }
    }

    func build(with dp: Aiuta.Configuration.DataProviders, fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.ImagePicker.UploadsHistory {
        let stringsValue: Aiuta.Configuration.Features.ImagePicker.UploadsHistory.Strings
        switch strings {
            case .builtIn:
                stringsValue = .default
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        let stylesValue: Aiuta.Configuration.Features.ImagePicker.UploadsHistory.Styles
        stylesValue = .custom(changePhotoButtonStyle: styles.changePhotoButtonStyle.sdkStyle())

        let historyValue: Aiuta.Configuration.Features.ImagePicker.UploadsHistory.HistoryProvider
        switch dataProvider {
            case .builtIn:
                historyValue = .userDefaults
            case .custom:
                historyValue = .dataProvider(dp)
        }

        return .custom(
            strings: stringsValue,
            styles: stylesValue,
            history: historyValue
        )
    }
}

// MARK: - TryOn Feature

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.TryOnFeature {
    struct StringsProvider: Aiuta.Configuration.Features.TryOn.Strings.Provider {
        let tryOnPageTitle: String
        let tryOn: String
        init(_ custom: AiutaPlugin.Configuration.TryOnFeature.Strings.Custom) {
            tryOnPageTitle = custom.tryOnPageTitle
            tryOn = custom.tryOn
        }
    }

    struct IconsProvider: Aiuta.Configuration.Features.TryOn.Icons.Provider {
        let magic20: UIImage
        init(_ custom: AiutaPlugin.Configuration.TryOnFeature.Icons.Custom) {
            magic20 = custom.tryOn20.uiImage()
        }
    }

    func build(with handler: Aiuta.Configuration.Handlers,
               dataProvider: Aiuta.Configuration.DataProviders,
               fonts: [AiutaPlugin.Font],
               ui userInterface: AiutaPlugin.Configuration.UserInterface) -> Aiuta.Configuration.Features.TryOn {
        let stringsValue: Aiuta.Configuration.Features.TryOn.Strings
        switch strings {
            case .builtIn:
                stringsValue = .default
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        let iconsValue: Aiuta.Configuration.Features.TryOn.Icons
        switch icons {
            case .builtIn:
                iconsValue = .builtIn
            case let .custom(custom):
                iconsValue = .provider(IconsProvider(custom))
        }

        let stylesValue: Aiuta.Configuration.Features.TryOn.Styles
        if let gradientColors = styles.tryOnButtonGradient {
            let colors = gradientColors.compactMap { UIColor(argb: $0) }
            stylesValue = .custom(tryOnButtonGradient: colors)
        } else {
            stylesValue = .default
        }

        let cartValue: Aiuta.Configuration.Features.TryOn.Cart = .default(handler: handler)

        return .custom(
            loadingPage: loadingPage.build(with: fonts),
            inputImageValidation: inputImageValidation.build(with: fonts),
            cart: cartValue,
            fitDisclaimer: fitDisclaimer?.build(with: fonts) ?? .none,
            feedback: feedback?.build(with: fonts, ui: userInterface) ?? .none,
            generationsHistory: generationsHistory?.build(with: dataProvider, fonts: fonts) ?? .none,
            otherPhoto: otherPhoto?.build(with: fonts) ?? .default,
            icons: iconsValue,
            styles: stylesValue,
            strings: stringsValue,
            toggles: .default
        )
    }
}

// MARK: - TryOn Sub-Features

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.TryOnFeature.LoadingPageFeature {
    struct StringsProvider: Aiuta.Configuration.Features.TryOn.LoadingPage.Strings.Provider {
        let tryOnLoadingStatusUploadingImage: String
        let tryOnLoadingStatusScanningBody: String
        let tryOnLoadingStatusGeneratingOutfit: String

        init(_ custom: AiutaPlugin.Configuration.TryOnFeature.LoadingPageFeature.LoadingPageStrings.Custom) {
            tryOnLoadingStatusUploadingImage = custom.tryOnLoadingStatusUploadingImage
            tryOnLoadingStatusScanningBody = custom.tryOnLoadingStatusScanningBody
            tryOnLoadingStatusGeneratingOutfit = custom.tryOnLoadingStatusGeneratingOutfit
        }
    }

    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.TryOn.LoadingPage {
        let stringsValue: Aiuta.Configuration.Features.TryOn.LoadingPage.Strings
        switch strings {
            case .builtIn:
                stringsValue = .default
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        let stylesValue: Aiuta.Configuration.Features.TryOn.LoadingPage.Styles
        stylesValue = .custom(
            backgroundGradient: styles.loadingStatusBackgroundGradient?.compactMap { UIColor(argb: $0) } ?? [],
            statusStyle: styles.loadingStatusStyle.sdkStyle()
        )

        return .custom(
            strings: stringsValue,
            styles: stylesValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.TryOnFeature.InputImageValidationFeature {
    struct StringsProvider: Aiuta.Configuration.Features.TryOn.InputValidation.Strings.Provider {
        let invalidInputImageDescription: String
        let invalidInputImageChangePhotoButton: String

        init(_ custom: AiutaPlugin.Configuration.TryOnFeature.InputImageValidationFeature.InputImageValidationStrings.Custom) {
            invalidInputImageDescription = custom.invalidInputImageDescription
            invalidInputImageChangePhotoButton = custom.invalidInputImageChangePhotoButton
        }
    }

    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.TryOn.InputValidation {
        let stringsValue: Aiuta.Configuration.Features.TryOn.InputValidation.Strings
        switch strings {
            case .builtIn:
                stringsValue = .default
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        return .custom(strings: stringsValue)
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.TryOnFeature.FitDisclaimerFeature {
    struct StringsProvider: Aiuta.Configuration.Features.TryOn.FitDisclaimer.Strings.Provider {
        let fitDisclaimerTitle: String
        let fitDisclaimerDescription: String
        let fitDisclaimerCloseButton: String

        init(_ custom: AiutaPlugin.Configuration.TryOnFeature.FitDisclaimerFeature.FitDisclaimerStrings.Custom) {
            fitDisclaimerTitle = custom.fitDisclaimerTitle
            fitDisclaimerDescription = custom.fitDisclaimerDescription
            fitDisclaimerCloseButton = custom.fitDisclaimerCloseButton
        }
    }

    struct TypographyProvider: Aiuta.Configuration.Features.TryOn.FitDisclaimer.Typography.Provider {
        let disclaimer: Aiuta.Configuration.TextStyle

        init(_ custom: AiutaPlugin.Configuration.TryOnFeature.FitDisclaimerFeature.FitDisclaimerTypography.Custom, fonts: [AiutaPlugin.Font]) {
            disclaimer = custom.disclaimer.textStyle(with: fonts)
        }
    }

    struct IconsProvider: Aiuta.Configuration.Features.TryOn.FitDisclaimer.Icons.Provider {
        let info20: UIImage?

        init(_ custom: AiutaPlugin.Configuration.TryOnFeature.FitDisclaimerFeature.FitDisclaimerIcons.Custom) {
            info20 = custom.info20?.uiImage()
        }
    }

    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.TryOn.FitDisclaimer {
        let stringsValue: Aiuta.Configuration.Features.TryOn.FitDisclaimer.Strings
        switch strings {
            case .builtIn:
                stringsValue = .default
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        let typographyValue: Aiuta.Configuration.Features.TryOn.FitDisclaimer.Typography
        switch typography {
            case .builtIn:
                typographyValue = .default
            case let .custom(custom):
                typographyValue = .provider(TypographyProvider(custom, fonts: fonts))
        }

        let iconsValue: Aiuta.Configuration.Features.TryOn.FitDisclaimer.Icons
        switch icons {
            case .builtIn:
                iconsValue = .none
            case let .custom(custom):
                iconsValue = .provider(IconsProvider(custom))
        }

        return .custom(
            strings: stringsValue,
            typography: typographyValue,
            icons: iconsValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.TryOnFeature.FeedbackFeature {
    struct StringsProvider: Aiuta.Configuration.Features.TryOn.Feedback.Strings.Provider {
        let feedbackTitle: String
        let feedbackOptions: [String]
        let feedbackButtonSkip: String
        let feedbackButtonSend: String
        let feedbackGratitudeText: String

        init(_ custom: AiutaPlugin.Configuration.TryOnFeature.FeedbackFeature.FeedbackStrings.Custom) {
            feedbackTitle = custom.feedbackTitle
            feedbackOptions = custom.feedbackOptions
            feedbackButtonSkip = custom.feedbackButtonSkip
            feedbackButtonSend = custom.feedbackButtonSend
            feedbackGratitudeText = custom.feedbackGratitudeText
        }
    }

    struct IconsProvider: Aiuta.Configuration.Features.TryOn.Feedback.Icons.Provider {
        let like36: UIImage
        let dislike36: UIImage
        let gratitude40: UIImage

        init(_ custom: AiutaPlugin.Configuration.TryOnFeature.FeedbackFeature.FeedbackIcons.Custom) {
            like36 = custom.like36.uiImage()
            dislike36 = custom.dislike36.uiImage()
            gratitude40 = custom.gratitude40.uiImage()
        }
    }

    struct ShapesProvider: Aiuta.Configuration.Features.TryOn.Feedback.Shapes.Provider {
        let feedbackButton: Aiuta.Configuration.Shape

        init(_ shapes: AiutaPlugin.Configuration.UserInterface.Theme.BottomSheetTheme.Shapes) {
            feedbackButton = .continuous(radius: shapes.chipsButton)
        }
    }

    func build(with fonts: [AiutaPlugin.Font], ui: AiutaPlugin.Configuration.UserInterface) -> Aiuta.Configuration.Features.TryOn.Feedback {
        let otherValue: Aiuta.Configuration.Features.TryOn.Feedback.Other = otherFeedback?.build(with: fonts) ?? .none

        let stringsValue: Aiuta.Configuration.Features.TryOn.Feedback.Strings
        switch strings {
            case .builtIn:
                stringsValue = .default
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        let iconsValue: Aiuta.Configuration.Features.TryOn.Feedback.Icons
        switch icons {
            case .builtIn:
                iconsValue = .default
            case let .custom(custom):
                iconsValue = .provider(IconsProvider(custom))
        }

        let shapesValue: Aiuta.Configuration.Features.TryOn.Feedback.Shapes = .provider(ShapesProvider(ui.theme.bottomSheet.shapes))

        return .custom(
            other: otherValue,
            strings: stringsValue,
            icons: iconsValue,
            shapes: shapesValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.TryOnFeature.FeedbackFeature.FeedbackOtherFeature {
    struct StringsProvider: Aiuta.Configuration.Features.TryOn.Feedback.Other.Strings.Provider {
        let feedbackOptionOther: String
        let otherFeedbackTitle: String
        let otherFeedbackButtonSend: String
        let otherFeedbackButtonCancel: String

        init(_ custom: AiutaPlugin.Configuration.TryOnFeature.FeedbackFeature.FeedbackOtherFeature.FeedbackOtherStrings.Custom) {
            feedbackOptionOther = custom.feedbackOptionOther
            otherFeedbackTitle = custom.otherFeedbackTitle
            otherFeedbackButtonSend = custom.otherFeedbackButtonSend
            otherFeedbackButtonCancel = custom.otherFeedbackButtonCancel
        }
    }

    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.TryOn.Feedback.Other {
        let stringsValue: Aiuta.Configuration.Features.TryOn.Feedback.Other.Strings
        switch strings {
            case .builtIn:
                stringsValue = .default
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        return .custom(strings: stringsValue)
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.TryOnFeature.GenerationsHistoryFeature {
    struct StringsProvider: Aiuta.Configuration.Features.TryOn.GenerationsHistory.Strings.Provider {
        let generationsHistoryPageTitle: String
        init(_ custom: AiutaPlugin.Configuration.TryOnFeature.GenerationsHistoryFeature.GenerationsHistoryStrings.Custom) {
            generationsHistoryPageTitle = custom.generationsHistoryPageTitle
        }
    }

    struct IconsProvider: Aiuta.Configuration.Features.TryOn.GenerationsHistory.Icons.Provider {
        let history24: UIImage
        init(_ custom: AiutaPlugin.Configuration.TryOnFeature.GenerationsHistoryFeature.GenerationsHistoryIcons.Custom) {
            history24 = custom.history24.uiImage()
        }
    }

    func build(with dp: Aiuta.Configuration.DataProviders, fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.TryOn.GenerationsHistory {
        let stringsValue: Aiuta.Configuration.Features.TryOn.GenerationsHistory.Strings
        switch strings {
            case .builtIn:
                stringsValue = .default
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        let iconsValue: Aiuta.Configuration.Features.TryOn.GenerationsHistory.Icons
        switch icons {
            case .builtIn:
                iconsValue = .builtIn
            case let .custom(custom):
                iconsValue = .provider(IconsProvider(custom))
        }

        let historyValue: Aiuta.Configuration.Features.TryOn.GenerationsHistory.HistoryProvider
        switch dataProvider {
            case .builtIn:
                historyValue = .userDefaults
            case .custom:
                historyValue = .dataProvider(dp)
        }

        return .custom(
            icons: iconsValue,
            strings: stringsValue,
            history: historyValue
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.TryOnFeature.OtherPhotoFeature {
    struct IconsProvider: Aiuta.Configuration.Features.TryOn.ContinueWithOtherPhoto.Icons.Provider {
        let changePhoto24: UIImage

        init(_ custom: AiutaPlugin.Configuration.TryOnFeature.OtherPhotoFeature.OtherPhotoIcons.Custom) {
            changePhoto24 = custom.changePhoto24.uiImage()
        }
    }

    func build(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.TryOn.ContinueWithOtherPhoto {
        let iconsValue: Aiuta.Configuration.Features.TryOn.ContinueWithOtherPhoto.Icons
        switch icons {
            case .builtIn:
                iconsValue = .builtIn
            case let .custom(custom):
                iconsValue = .provider(IconsProvider(custom))
        }

        return .custom(icon: iconsValue)
    }
}

// MARK: - Share Feature

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ShareFeature {
    struct IconsProvider: Aiuta.Configuration.Features.Share.Icons.Provider {
        let share24: UIImage
        init(_ custom: AiutaPlugin.Configuration.ShareFeature.Icons.Custom) {
            share24 = custom.share24.uiImage()
        }
    }

    struct StringsProvider: Aiuta.Configuration.Features.Share.Strings.Provider {
        var shareButton: String

        init(_ custom: AiutaPlugin.Configuration.ShareFeature.Strings.Custom) {
            shareButton = custom.shareButton
        }
    }

    func build(with dp: Aiuta.Configuration.DataProviders, fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.Share {
        let iconsValue: Aiuta.Configuration.Features.Share.Icons
        switch icons {
            case .builtIn:
                iconsValue = .builtIn
            case let .custom(custom):
                iconsValue = .provider(IconsProvider(custom))
        }

        let stringsValue: Aiuta.Configuration.Features.Share.Strings
        switch strings {
            case .builtIn:
                stringsValue = .default
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        let textProviderValue: Aiuta.Configuration.Features.Share.AdditionalTextProvider
        switch dataProvider {
            case .none:
                textProviderValue = .none
            case .some:
                textProviderValue = .dataProvider(dp)
        }

        return .custom(
            watermark: watermark?.build() ?? .none,
            text: textProviderValue,
            icons: iconsValue,
            strings: stringsValue
        )
    }
}

// MARK: - Share Sub-Features

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.ShareFeature.WatermarkFeature {
    struct ImagesProvider: Aiuta.Configuration.Features.Share.Watermark.Provider {
        var shareWatermark: UIImage
        init(_ images: AiutaPlugin.Configuration.ShareFeature.WatermarkFeature.Images) {
            shareWatermark = images.logo.uiImage()
        }
    }

    func build() -> Aiuta.Configuration.Features.Share.Watermark {
        return .provider(ImagesProvider(images))
    }
}

// MARK: - Wishlist Feature

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.WishlistFeature {
    struct StringsProvider: Aiuta.Configuration.Features.Wishlist.Strings.Provider {
        let wishlistButtonAdd: String
        init(_ custom: AiutaPlugin.Configuration.WishlistFeature.Strings.Custom) {
            wishlistButtonAdd = custom.wishlistButtonAdd
        }
    }

    struct IconsProvider: Aiuta.Configuration.Features.Wishlist.Icons.Provider {
        let wishlist24: UIImage
        let wishlistFill24: UIImage
        init(_ custom: AiutaPlugin.Configuration.WishlistFeature.Icons.Custom) {
            wishlist24 = custom.wishlist24.uiImage()
            wishlistFill24 = custom.wishlistFill24.uiImage()
        }
    }

    func build(with dataProvider: Aiuta.Configuration.DataProviders, fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.Features.Wishlist {
        let stringsValue: Aiuta.Configuration.Features.Wishlist.Strings
        switch strings {
            case .builtIn:
                stringsValue = .default
            case let .custom(custom):
                stringsValue = .provider(StringsProvider(custom))
        }

        let iconsValue: Aiuta.Configuration.Features.Wishlist.Icons
        switch icons {
            case .builtIn:
                iconsValue = .builtIn
            case let .custom(custom):
                iconsValue = .provider(IconsProvider(custom))
        }

        return .custom(
            icons: iconsValue,
            strings: stringsValue,
            dataProvider: dataProvider
        )
    }
}

// MARK: - Ananlytics

@available(iOS 13.0.0, *)
extension Optional where Wrapped == AiutaPlugin.Configuration.Analytics {
    func build(with host: AiutaHost) -> Aiuta.Analytics {
        switch self {
            case .some: return .handler(host.handlers)
            case .none: return .none
        }
    }
}

// MARK: - Debug Settings

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.DebugSettings {
    func build() -> Aiuta.Configuration.DebugSettings {
        .custom(
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
