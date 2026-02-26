package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.protection.strings

import com.aiuta.fashionsdk.configuration.features.picker.protection.strings.AiutaImagePickerProtectionDisclaimerFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.protection.strings.FlutterAiutaImagePickerProtectionDisclaimerStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.protection.strings.FlutterAiutaImagePickerProtectionDisclaimerStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.protection.strings.FlutterAiutaImagePickerProtectionDisclaimerStringsCustom

fun FlutterAiutaImagePickerProtectionDisclaimerStrings.toNative(): AiutaImagePickerProtectionDisclaimerFeatureStrings {
    return when (this) {
        is FlutterAiutaImagePickerProtectionDisclaimerStringsBuiltIn -> AiutaImagePickerProtectionDisclaimerFeatureStrings.Default()
        is FlutterAiutaImagePickerProtectionDisclaimerStringsCustom -> object : AiutaImagePickerProtectionDisclaimerFeatureStrings {
            override val protectionDisclaimer = this@toNative.protectionDisclaimer
        }
    }
}
