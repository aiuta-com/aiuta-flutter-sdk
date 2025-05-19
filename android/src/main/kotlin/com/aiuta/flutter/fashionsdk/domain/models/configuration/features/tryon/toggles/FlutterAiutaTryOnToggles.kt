package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.toggles

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTryOnToggles(
    @SerialName("isBackgroundExecutionAllowed")
    val isBackgroundExecutionAllowed: Boolean
)