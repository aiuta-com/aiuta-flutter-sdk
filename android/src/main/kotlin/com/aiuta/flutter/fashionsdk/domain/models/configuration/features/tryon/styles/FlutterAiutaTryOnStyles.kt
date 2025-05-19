package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.styles

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTryOnStyles(
    @SerialName("tryOnButtonGradient")
    val tryOnButtonGradient: List<String>? = null
)