package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.protection.icons

import com.aiuta.fashionsdk.configuration.features.picker.protection.icons.AiutaImagePickerProtectionDisclaimerFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.protection.icons.FlutterAiutaImagePickerProtectionDisclaimerIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.protection.icons.FlutterAiutaImagePickerProtectionDisclaimerIconsCustom
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling

fun FlutterAiutaImagePickerProtectionDisclaimerIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaImagePickerProtectionDisclaimerFeatureIcons {
    return when (this) {
        is FlutterAiutaImagePickerProtectionDisclaimerIconsCustom -> resourceScope.withResourceHandling(null) {
            object : AiutaImagePickerProtectionDisclaimerFeatureIcons {
                override val protection16 = createNativeIcon(this@toNative.protection16)
            }
        }
    }
}
