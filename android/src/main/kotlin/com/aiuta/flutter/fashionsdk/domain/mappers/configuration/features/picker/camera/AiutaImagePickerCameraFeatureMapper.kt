package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.camera

import com.aiuta.fashionsdk.configuration.features.picker.camera.AiutaImagePickerCameraFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.camera.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.camera.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.camera.FlutterAiutaImagePickerCameraFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaImagePickerCameraFeature.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaImagePickerCameraFeature {
    return AiutaImagePickerCameraFeature(
        icons = icons.toNative(resourceScope),
        strings = strings.toNative()
    )
}