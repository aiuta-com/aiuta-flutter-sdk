package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.picker.AiutaImagePickerFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.camera.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.gallery.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.model.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.history.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.images.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.FlutterAiutaImagePickerFeature

fun FlutterAiutaImagePickerFeature.toNative(
    assetManager: AssetManager,
): AiutaImagePickerFeature {
    return AiutaImagePickerFeature(
        camera = camera?.toNative(assetManager),
        photoGallery = photoGallery.toNative(assetManager),
        predefinedModels = predefinedModels?.toNative(assetManager),
        uploadsHistory = uploadsHistory?.toNative(),
        images = images.toNative(assetManager),
        strings = strings.toNative()
    )
}