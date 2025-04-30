package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.validation.strings

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTryOnInputImageValidationStrings(
    @SerialName("invalidInputImageDescription")
    val invalidInputImageDescription: String,

    @SerialName("invalidInputImageChangePhotoButton")
    val invalidInputImageChangePhotoButton: String
)