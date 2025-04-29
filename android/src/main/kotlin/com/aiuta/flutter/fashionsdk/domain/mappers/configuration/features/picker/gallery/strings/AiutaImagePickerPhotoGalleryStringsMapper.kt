package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.gallery.strings

import com.aiuta.fashionsdk.configuration.features.picker.gallery.strings.AiutaImagePickerPhotoGalleryFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.gallery.strings.FlutterAiutaImagePickerPhotoGalleryStrings

fun FlutterAiutaImagePickerPhotoGalleryStrings.toNative(): AiutaImagePickerPhotoGalleryFeatureStrings {
    return object : AiutaImagePickerPhotoGalleryFeatureStrings {
        override val galleryButtonSelectPhoto = this@toNative.galleryButtonSelectPhoto
    }
}