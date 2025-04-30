package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.images

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.picker.images.AiutaImagePickerFeatureImages
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNativeImage
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.images.FlutterAiutaImagePickerImages

fun FlutterAiutaImagePickerImages.toNative(
    assetManager: AssetManager
): AiutaImagePickerFeatureImages {
    return object : AiutaImagePickerFeatureImages {
        override val examples = this@toNative.examplePaths.map { it.toNativeImage(assetManager) }
    }
}