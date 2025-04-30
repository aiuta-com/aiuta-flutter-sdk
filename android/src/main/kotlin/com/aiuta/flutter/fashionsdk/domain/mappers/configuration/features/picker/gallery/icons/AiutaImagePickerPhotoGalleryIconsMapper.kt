package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.gallery.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.picker.gallery.icons.AiutaImagePickerPhotoGalleryFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.gallery.icons.FlutterAiutaImagePickerPhotoGalleryIcons

fun FlutterAiutaImagePickerPhotoGalleryIcons.toNative(
    assetManager: AssetManager
): AiutaImagePickerPhotoGalleryFeatureIcons {
    return object : AiutaImagePickerPhotoGalleryFeatureIcons {
        override val gallery24 = this@toNative.gallery24.toNative(assetManager)
    }
}