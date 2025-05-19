package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.validation

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.validation.strings.FlutterAiutaTryOnInputImageValidationStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTryOnInputImageValidationFeature(
    @SerialName("strings")
    val strings: FlutterAiutaTryOnInputImageValidationStrings
)