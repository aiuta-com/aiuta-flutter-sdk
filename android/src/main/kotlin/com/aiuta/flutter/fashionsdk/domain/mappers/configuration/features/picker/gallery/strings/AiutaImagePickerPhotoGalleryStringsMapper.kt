package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.gallery.strings

import com.aiuta.fashionsdk.configuration.features.picker.gallery.strings.AiutaImagePickerPhotoGalleryFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.gallery.strings.FlutterAiutaImagePickerPhotoGalleryStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.gallery.strings.FlutterAiutaImagePickerPhotoGalleryStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.gallery.strings.FlutterAiutaImagePickerPhotoGalleryStringsCustom

fun FlutterAiutaImagePickerPhotoGalleryStrings.toNative(): AiutaImagePickerPhotoGalleryFeatureStrings {
    return when (this) {
        is FlutterAiutaImagePickerPhotoGalleryStringsBuiltIn -> AiutaImagePickerPhotoGalleryFeatureStrings.Default()
        is FlutterAiutaImagePickerPhotoGalleryStringsCustom -> object : AiutaImagePickerPhotoGalleryFeatureStrings {
            override val galleryButtonSelectPhoto = this@toNative.galleryButtonSelectPhoto
        }
    }
}