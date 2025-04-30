package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.camera.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.picker.camera.icons.AiutaImagePickerCameraFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.camera.icons.FlutterAiutaImagePickerCameraIcons

fun FlutterAiutaImagePickerCameraIcons.toNative(
    assetManager: AssetManager
): AiutaImagePickerCameraFeatureIcons {
    return object : AiutaImagePickerCameraFeatureIcons {
        override val camera24 = this@toNative.camera24.toNative(assetManager)
    }
}