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

extension AiutaPlugin.Configuration {
    func buildConfiguration() -> Aiuta.Configuration {
        var cfg = Aiuta.Configuration()

        cfg.appearance.presentationStyle = mode.presentationStyle
        cfg.appearance.localization = language.localization
        toggles.write(to: &cfg.behavior)
        theme?.write(to: &cfg)

        return cfg
    }
}

private extension AiutaPlugin.Configuration.Toggles {
    func write(to cfg: inout Aiuta.Configuration.Behavior) {
        cfg.showSplashScreenBeforeOnboadring = isPreOnboardingAvailable
        cfg.isTryonHistoryAvailable = isHistoryAvailable
        cfg.isWishlistAvailable = isWishlistAvailable
        cfg.isShareAvailable = isShareAvailable
        cfg.allowBackgroundExecution = isBackgroundExecutionAllowed

        cfg.tryGeneratePersonSegmentation = true
        cfg.isDebugLogsEnabled = false
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration {
    func buildAuth(_ jwtProvider: AiutaJwtProvider) throws -> Aiuta.AuthType {
        switch authentication.mode {
            case .apiKey:
                guard let apiKey = authentication.apiKey else {
                    throw AiutaPlugin.WrapperError.invalidConfiguration("Authentication apiKey is required")
                }
                return .apiKey(apiKey: apiKey)
            case .jwt:
                guard let subscriptionId = authentication.subscriptionId else {
                    throw AiutaPlugin.WrapperError.invalidConfiguration("Authentication subscriptionId is required")
                }
                return .jwt(subscriptionId: subscriptionId, jwtProvider: jwtProvider)
        }
    }
}

private extension AiutaPlugin.Configuration.PresentationMode {
    var presentationStyle: Aiuta.Configuration.Appearance.PresentationStyle {
        switch self {
            case .fullScreen: return .fullScreen
            case .bottomSheet: return .bottomSheet
            case .pageSheet: return .pageSheet
        }
    }
}

private extension AiutaPlugin.Configuration.Language {
    var localization: Aiuta.Localization {
        switch self {
            case let .standard(standard): return .builtin(standard.builtin)
            case let .custom(customLanguage): return .custom(customLanguage)
        }
    }
}

private extension AiutaPlugin.Configuration.StandardLanguage {
    var builtin: Aiuta.Localization.Builtin {
        let substitutions = Aiuta.Localization.Builtin.Substitutions(
            brandName: brand,
            termsOfServiceUrl: termsOfServiceUrl,
            privacyPolicyUrl: privacyPolicyUrl,
            supplementaryConsents: onboardingPageConsentSupplementaryPoints
        )

        switch language {
            case .english: return .English(substitutions)
            case .turkish: return .Turkish(substitutions)
            case .russian: return .Russian(substitutions)
        }
    }
}

private extension AiutaPlugin.Configuration.Theme {
    func write(to cfg: inout Aiuta.Configuration) {
        colors?.write(to: &cfg.appearance)
        gradients?.write(to: &cfg.appearance)
        typography?.write(to: &cfg.appearance)
        icons?.write(to: &cfg.appearance)
        shapes?.write(to: &cfg.appearance)
        dimensions?.write(to: &cfg.appearance)
        watermark?.write(to: &cfg.behavior)
        images?.write(to: &cfg.appearance)
        toggles?.write(to: &cfg.appearance)
    }
}

private extension AiutaPlugin.Configuration.Theme.Colors {
    func write(to cfg: inout Aiuta.Configuration.Appearance) {
        cfg.colors.brand = UIColor(argb: brand)
        cfg.colors.accent = UIColor(argb: accent)
        cfg.colors.aiuta = UIColor(argb: aiuta)

        cfg.colors.primary = UIColor(argb: primary)
        cfg.colors.secondary = UIColor(argb: secondary)
        cfg.colors.tertiary = UIColor(argb: tertiary)
        cfg.colors.onDark = UIColor(argb: onDark)

        cfg.colors.error = UIColor(argb: error)
        cfg.colors.onError = UIColor(argb: onError)

        cfg.colors.background = UIColor(argb: background)
        cfg.colors.neutral = UIColor(argb: neutral)
        cfg.colors.neutral2 = UIColor(argb: neutral2)
        cfg.colors.neutral3 = UIColor(argb: neutral3)
    }
}

private extension AiutaPlugin.Configuration.Theme.Gradients {
    func write(to cfg: inout Aiuta.Configuration.Appearance) {
        cfg.colors.tryOnAnimationGradient = loadingAnimation.compactMap { UIColor(argb: $0) }.nonEmptyOrNil
        cfg.colors.tryOnButtonGradient = tryOnButtonBackground.compactMap { UIColor(argb: $0) }.nonEmptyOrNil
    }
}

private extension AiutaPlugin.Configuration.Theme.Typography {
    func write(to cfg: inout Aiuta.Configuration.Appearance) {
        cfg.fonts.titleXL = titleXL.aiutaCustomFont(of: fonts)
        cfg.fonts.welcome = welcomeText.aiutaCustomFont(of: fonts)
        cfg.fonts.titleL = titleL.aiutaCustomFont(of: fonts)
        cfg.fonts.titleM = titleM.aiutaCustomFont(of: fonts)
        cfg.fonts.navBar = navbar.aiutaCustomFont(of: fonts)
        cfg.fonts.regular = regular.aiutaCustomFont(of: fonts)
        cfg.fonts.button = button.aiutaCustomFont(of: fonts)
        cfg.fonts.buttonS = smallButton.aiutaCustomFont(of: fonts)
        cfg.fonts.cells = cells.aiutaCustomFont(of: fonts)
        cfg.fonts.chips = chips.aiutaCustomFont(of: fonts)
        cfg.fonts.product = productName.aiutaCustomFont(of: fonts)
        cfg.fonts.price = price.aiutaCustomFont(of: fonts)
        cfg.fonts.brand = brandName.aiutaCustomFont(of: fonts)
        cfg.fonts.description = description.aiutaCustomFont(of: fonts)
    }
}

private extension AiutaPlugin.Configuration.Theme.TextStyle {
    func aiutaCustomFont(of fonts: [AiutaPlugin.Configuration.Theme.CustomFont]) -> Aiuta.Configuration.Appearance.CustomFont {
        let font = lookupFont(fonts.first(where: { $0.family == fontFamily && $0.weight == fontWeight })) ??
            UIFont.systemFont(ofSize: CGFloat(fontSize), weight: fontWeight.uiFontWeight)
        let loadedFontFamily = fontWeight.fontFamily(from: font.fontName)

        return Aiuta.Configuration.Appearance.CustomFont(
            font: font,
            family: loadedFontFamily,
            size: CGFloat(fontSize),
            weight: fontWeight.uiFontWeight,
            kern: letterSpacing,
            lineHeightMultiple: font.lineHeight > 0 ? lineHeight / font.lineHeight : 1
        )
    }

    func lookupFont(_ customFont: AiutaPlugin.Configuration.Theme.CustomFont?) -> UIFont? {
        let fontSize = CGFloat(fontSize)
        let fontName = "\(fontFamily)-\(fontWeight.nameSuffix)"
        if let font = UIFont(name: fontName, size: fontSize) { return font }

        guard let customFont else {
            NSLog("The '\(fontName)' font was not found in the registered fonts.\n" +
                "Also, no configuration was found to register a custom font matching fontFamily '\(fontFamily)' and fontWeight '\(fontWeight)'\n")
            return nil
        }

        let fontKey = FlutterDartProject.lookupKey(forAsset: customFont.filePath)
        guard let path = Bundle.main.path(forResource: fontKey, ofType: nil),
              let fontData = NSData(contentsOfFile: path),
              let dataProvider = CGDataProvider(data: fontData),
              let fontRef = CGFont(dataProvider),
              let fontFullName = fontRef.fullName as? String else {
            NSLog("The '\(fontName)' font was not found in the registered fonts.\n" +
                "Also, the font file '\(customFont.filePath)' cannot be read.\n")
            return nil
        }

        if fontFullName != fontName {
            NSLog("The '\(fontFullName)' fontName from the '\(customFont.filePath)' does not match '\(fontName)' from the Aiuta Configuration.\n" +
                "Please use the correct fontFamily to avoid unnecessary font registration attempts.\n" +
                "Expected fontFamily: \(fontWeight.fontFamily(from: fontFullName))\n")
        }

        var errorRef: Unmanaged<CFError>?
        _ = CTFontManagerRegisterGraphicsFont(fontRef, &errorRef)
        return UIFont(name: fontFullName, size: fontSize)
    }
}

private extension AiutaPlugin.Configuration.Theme.FontWeight {
    var uiFontWeight: UIFont.Weight {
        switch self {
            case .thin: return .thin
            case .extralight: return .ultraLight
            case .light: return .light
            case .normal: return .regular
            case .medium: return .medium
            case .semibold: return .semibold
            case .bold: return .bold
            case .extrabold: return .heavy
            case .black: return .black
        }
    }

    var nameSuffix: String {
        switch self {
            case .thin: return "Thin"
            case .extralight: return "UltraLight"
            case .light: return "Light"
            case .normal: return "Regular"
            case .medium: return "Medium"
            case .semibold: return "Semibold"
            case .bold: return "Bold"
            case .extrabold: return "Heavy"
            case .black: return "Black"
        }
    }

    func fontFamily(from fullName: String) -> String {
        String(fullName.dropLast(nameSuffix.count + 1))
    }
}

private extension AiutaPlugin.Configuration.Theme.Icons {
    func write(to cfg: inout Aiuta.Configuration.Appearance) {
        cfg.icons.icons14.spin = loading14.uiImage()

        cfg.icons.icons16.lock = lock16.uiImage()
        cfg.icons.icons16.arrow = arrow16.uiImage()

        cfg.icons.icons20.magic = magic20.uiImage()
        cfg.icons.icons20.check = check20.uiImage()
        cfg.icons.icons20.info = info20.uiImage()

        cfg.icons.icons24.back = back24.uiImage()
        cfg.icons.icons24.camera = camera24.uiImage()
        cfg.icons.icons24.cameraSwap = takePhoto24.uiImage()
        cfg.icons.icons24.checkCorrect = checkCorrect24.uiImage()
        cfg.icons.icons24.checkNotCorrect = checkNotCorrect24.uiImage()
        cfg.icons.icons24.close = close24.uiImage()
        cfg.icons.icons24.trash = trash24.uiImage()
        cfg.icons.icons24.history = history24.uiImage()
        cfg.icons.icons24.photoLibrary = photoLibrary24.uiImage()
        cfg.icons.icons24.share = share24.uiImage()
        cfg.icons.icons24.wishlist = wishlist24.uiImage()
        cfg.icons.icons24.wishlistFill = wishlistFill24.uiImage()

        cfg.icons.icons36.error = error36.uiImage()
        cfg.icons.icons36.imageError = imageError36.uiImage()
        cfg.icons.icons36.like = like36.uiImage()
        cfg.icons.icons36.dislike = dislike36.uiImage()

        cfg.icons.icons82.splash = preonboarding82.uiImage()
    }
}

private extension AiutaPlugin.Configuration.Theme.Shapes {
    func write(to cfg: inout Aiuta.Configuration.Appearance) {
        cfg.dimensions.imageMainRadius = CGFloat(mainImage)
        cfg.dimensions.imageBoardingRadius = CGFloat(onboardingImage)
        cfg.dimensions.imagePreviewRadius = CGFloat(previewImage)
        cfg.dimensions.bottomSheetRadius = CGFloat(bottomSheet)
        cfg.dimensions.buttonLargeRadius = CGFloat(buttonL)
        cfg.dimensions.buttonSmallRadius = CGFloat(buttonM)
    }
}

private extension AiutaPlugin.Configuration.Theme.Dimensions {
    func write(to cfg: inout Aiuta.Configuration.Appearance) {
        cfg.dimensions.grabberWidth = grabberWidth.map { CGFloat($0) }
        cfg.dimensions.grabberOffset = grabberPaddingTop.map { CGFloat($0) }
    }
}

private extension AiutaPlugin.Configuration.Theme.Watermark {
    func write(to cfg: inout Aiuta.Configuration.Behavior) {
        cfg.watermark.image = path.uiImage()
    }
}

private extension AiutaPlugin.Configuration.Theme.Images {
    func write(to cfg: inout Aiuta.Configuration.Appearance) {
        cfg.images.splashScreen = preonboardingImagePath?.uiImage()
        cfg.images.selectorPlaceholder = selectorEmptyImagePath?.uiImage()
        cfg.images.feedbackGratitude = feedbackThanksImagePath?.uiImage()

        onboardingImages?.write(to: &cfg.images.onboarding)
    }
}

private extension AiutaPlugin.Configuration.Theme.OnboadringImages {
    func write(to cfg: inout Aiuta.Configuration.Appearance.Images.Onboarding) {
        cfg.onboardingTryOnMainImage1 = onboardingTryOnMainImage1Path?.uiImage()
        cfg.onboardingTryOnMainImage2 = onboardingTryOnMainImage2Path?.uiImage()
        cfg.onboardingTryOnMainImage3 = onboardingTryOnMainImage3Path?.uiImage()
        cfg.onboardingTryOnItemImage1 = onboardingTryOnItemImage1Path?.uiImage()
        cfg.onboardingTryOnItemImage2 = onboardingTryOnItemImage2Path?.uiImage()
        cfg.onboardingTryOnItemImage3 = onboardingTryOnItemImage3Path?.uiImage()
        cfg.onboardingBestResulBadImage1 = onboardingBestResulBadImage1Path?.uiImage()
        cfg.onboardingBestResulBadImage2 = onboardingBestResulBadImage2Path?.uiImage()
        cfg.onboardingBestResulGoodImage1 = onboardingBestResulGoodImage1Path?.uiImage()
        cfg.onboardingBestResulGoodImage2 = onboardingBestResulGoodImage2Path?.uiImage()
    }
}

private extension AiutaPlugin.Configuration.Theme.ThemeToggles {
    func write(to cfg: inout Aiuta.Configuration.Appearance) {
        cfg.toggles.applyProductFirstImageExtraInset = isProductFirstImageExtendedPaddingApplied
        cfg.toggles.extendOnbordingNavBar = isOnboardingAppBarExtended
        cfg.toggles.preferRightClose = isMainAppbarReversed
        cfg.toggles.reduceShadows = isShadowsReduced
        cfg.toggles.enableBlurOutlines = isBlurOutlinesEnabled
        cfg.dimensions.continuingSeparators = isDelimitersExtended
    }
}

private extension AiutaPlugin.Configuration.Theme.Icon {
    func uiImage() -> UIImage? {
        let image = lookupImage(path)
        if !(shouldRenderAsIs ?? false) {
            return image?.withRenderingMode(.alwaysTemplate)
        } else {
            return image?.withRenderingMode(.alwaysOriginal)
        }
    }
}

private extension String {
    func uiImage() -> UIImage? {
        return lookupImage(self)
    }
}

private func lookupImage(_ path: String) -> UIImage? {
    let filename = (path as NSString).lastPathComponent
    let dirpath = (path as NSString).deletingLastPathComponent

    for screenScale in stride(from: Int(UIScreen.main.scale), to: 1, by: -1) {
        let key = FlutterDartProject.lookupKey(forAsset: "\(dirpath)/\(screenScale).0x/\(filename)")
        if let image = UIImage(named: key, in: Bundle.main, compatibleWith: nil) {
            return image
        }
    }

    let key = FlutterDartProject.lookupKey(forAsset: path)
    return UIImage(named: key, in: Bundle.main, compatibleWith: nil)
}

private extension Array {
    var nonEmptyOrNil: Self? {
        guard !isEmpty else { return nil }
        return self
    }
}

private extension UIColor {
    /// Initializes a UIColor from a hexadecimal ARGB string.
    /// - Parameter argb: The hexadecimal color string in ARGB format, e.g., "#FF9F9F9F".
    convenience init?(argb: String) {
        // Ensure the string starts with a "#" and has exactly 9 characters.
        guard argb.hasPrefix("#") && argb.count == 9 else {
            return nil
        }

        let hexString = String(argb.dropFirst()) // Drop the "#"
        var hexNumber: UInt64 = 0
        guard Scanner(string: hexString).scanHexInt64(&hexNumber) else {
            return nil
        }

        let a = CGFloat((hexNumber & 0xFF000000) >> 24) / 255.0
        let r = CGFloat((hexNumber & 0x00FF0000) >> 16) / 255.0
        let g = CGFloat((hexNumber & 0x0000FF00) >> 8) / 255.0
        let b = CGFloat(hexNumber & 0x000000FF) / 255.0

        self.init(red: r, green: g, blue: b, alpha: a)
    }
}
