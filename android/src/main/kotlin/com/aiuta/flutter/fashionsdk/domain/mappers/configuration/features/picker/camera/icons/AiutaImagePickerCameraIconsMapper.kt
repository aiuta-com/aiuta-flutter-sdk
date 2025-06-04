package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.camera.icons

import com.aiuta.fashionsdk.configuration.defaults.icons.features.selector.camera.DefaultAiutaImagePickerCameraFeatureIcons
import com.aiuta.fashionsdk.configuration.features.picker.camera.icons.AiutaImagePickerCameraFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.camera.icons.FlutterAiutaImagePickerCameraIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.camera.icons.FlutterAiutaImagePickerCameraIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.camera.icons.FlutterAiutaImagePickerCameraIconsCustom
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling

fun FlutterAiutaImagePickerCameraIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaImagePickerCameraFeatureIcons {
    val defaultImages = lazy { DefaultAiutaImagePickerCameraFeatureIcons() }

    return when (this) {
        is FlutterAiutaImagePickerCameraIconsBuiltIn -> defaultImages.value
        is FlutterAiutaImagePickerCameraIconsCustom -> resourceScope.withResourceHandling(defaultImages) {
            object : AiutaImagePickerCameraFeatureIcons {
                override val camera24 = createNativeIcon(this@toNative.camera24)
            }
        }
    }
}