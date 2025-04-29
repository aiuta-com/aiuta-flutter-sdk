package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.gallery

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.picker.gallery.AiutaImagePickerPhotoGalleryFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.gallery.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.gallery.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.gallery.FlutterAiutaImagePickerPhotoGalleryFeature

fun FlutterAiutaImagePickerPhotoGalleryFeature.toNative(
    assetManager: AssetManager
): AiutaImagePickerPhotoGalleryFeature {
    return AiutaImagePickerPhotoGalleryFeature(
        icons = icons.toNative(assetManager),
        strings = strings.toNative()
    )
}