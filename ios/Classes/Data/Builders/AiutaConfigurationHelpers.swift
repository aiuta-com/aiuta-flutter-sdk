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

var unavailableResourcesPolicy: Aiuta.Configuration.ValidationPolicy = .ignore

extension AiutaPlugin.TextStyle {
    func textStyle(with fonts: [AiutaPlugin.Font]) -> Aiuta.Configuration.TextStyle {
        let font = lookupFont(fonts.first(where: { $0.family == fontFamily && $0.weight == fontWeight })) ??
            UIFont.systemFont(ofSize: CGFloat(fontSize), weight: fontWeight.uiFontWeight)

        return Aiuta.Configuration.TextStyle(
            font: font,
            size: CGFloat(fontSize),
            weight: fontWeight.uiFontWeight,
            kern: letterSpacing,
            lineHeightMultiple: font.lineHeight > 0 ? lineHeight / font.lineHeight : 1
        )
    }

    func lookupFont(_ customFont: AiutaPlugin.Font?) -> UIFont? {
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

extension AiutaPlugin.Font.Weight {
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

extension AiutaPlugin.Icon {
    func uiImage() -> UIImage {
        let image = lookupImage(path)
        switch renderMode {
            case .template:
                return image.withRenderingMode(.alwaysTemplate)
            case .original:
                return image.withRenderingMode(.alwaysOriginal)
        }
    }
}

extension String {
    func uiImage() -> UIImage {
        return lookupImage(self)
    }
}

let emptyStub: UIImage = {
    UIGraphicsBeginImageContextWithOptions(CGSize(width: 1, height: 1), false, 0)
    let image = UIGraphicsGetImageFromCurrentImageContext() ?? UIImage()
    UIGraphicsEndImageContext()
    return image
}()

let redStub: UIImage = {
    let size = CGSize(width: 10, height: 10)
    UIGraphicsBeginImageContextWithOptions(size, false, 0)
    UIColor.red.setFill()
    UIRectFill(CGRect(origin: .zero, size: size))
    let image = UIGraphicsGetImageFromCurrentImageContext() ?? UIImage()
    UIGraphicsEndImageContext()
    return image
}()

func lookupImage(_ path: String) -> UIImage {
    let filename = (path as NSString).lastPathComponent
    let dirpath = (path as NSString).deletingLastPathComponent

    for screenScale in stride(from: Int(UIScreen.main.scale), to: 1, by: -1) {
        let key = FlutterDartProject.lookupKey(forAsset: "\(dirpath)/\(screenScale).0x/\(filename)")
        if let image = UIImage(named: key, in: Bundle.main, compatibleWith: nil) {
            return image
        }
    }

    let key = FlutterDartProject.lookupKey(forAsset: path)
    guard let image = UIImage(named: key, in: Bundle.main, compatibleWith: nil) else {
        switch unavailableResourcesPolicy {
            case .ignore: return emptyStub
            default: return redStub
        }
    }

    return image
}

extension Array {
    var nonEmptyOrNil: Self? {
        guard !isEmpty else { return nil }
        return self
    }
}

extension UIColor {
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

extension AiutaPlugin.ComponentStyle {
    func sdkStyle() -> Aiuta.Configuration.UserInterface.ComponentStyle {
        switch self {
            case .brand: return .brand
            case .contrast: return .contrast(.lightOnDark)
            case .contrastInverted: return .contrast(.darkOnLight)
            case .blurred: return .blurred(hasOutline: false)
            case .blurredWithOutline: return .blurred(hasOutline: true)
        }
    }
}

extension AiutaPlugin.Configuration.ConsentFeature.AiutaConsentType {
    func sdkType() -> Aiuta.Consent.ObtainType {
        switch self {
            case .implicitWithoutCheckbox:
                return .implicit(hasCheckBox: false)
            case .implicitWithCheckbox:
                return .implicit(hasCheckBox: true)
            case .explicitRequired:
                return .explicit(isRequired: true)
            case .explicitOptional:
                return .explicit(isRequired: false)
        }
    }
}
