package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.protection

import com.aiuta.fashionsdk.configuration.features.picker.protection.AiutaImagePickerProtectionDisclaimerFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.protection.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.protection.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.protection.FlutterAiutaImagePickerProtectionDisclaimerFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaImagePickerProtectionDisclaimerFeature.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaImagePickerProtectionDisclaimerFeature {
    return AiutaImagePickerProtectionDisclaimerFeature(
        icons = icons.toNative(resourceScope),
        strings = strings.toNative(),
    )
}
