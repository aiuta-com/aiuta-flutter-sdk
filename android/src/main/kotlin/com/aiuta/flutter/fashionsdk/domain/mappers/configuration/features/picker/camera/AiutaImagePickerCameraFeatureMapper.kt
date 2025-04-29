package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.camera

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.picker.camera.AiutaImagePickerCameraFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.camera.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.camera.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.camera.FlutterAiutaImagePickerCameraFeature

fun FlutterAiutaImagePickerCameraFeature.toNative(
    assetManager: AssetManager
): AiutaImagePickerCameraFeature {
    return AiutaImagePickerCameraFeature(
        icons = icons.toNative(assetManager),
        strings = strings.toNative()
    )
}