package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.images

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaImagePickerImages(
    @SerialName("examples")
    val examplePaths: List<String>
)