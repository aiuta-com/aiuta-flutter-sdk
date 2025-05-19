package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.gallery.icons

import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaImagePickerPhotoGalleryIcons(
    @SerialName("gallery24")
    val gallery24: FlutterAiutaIcon
)