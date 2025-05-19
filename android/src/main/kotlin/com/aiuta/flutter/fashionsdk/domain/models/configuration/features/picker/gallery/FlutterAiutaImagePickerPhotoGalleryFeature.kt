package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.gallery

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.gallery.icons.FlutterAiutaImagePickerPhotoGalleryIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.gallery.strings.FlutterAiutaImagePickerPhotoGalleryStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaImagePickerPhotoGalleryFeature(
    @SerialName("icons")
    val icons: FlutterAiutaImagePickerPhotoGalleryIcons,

    @SerialName("strings")
    val strings: FlutterAiutaImagePickerPhotoGalleryStrings
)