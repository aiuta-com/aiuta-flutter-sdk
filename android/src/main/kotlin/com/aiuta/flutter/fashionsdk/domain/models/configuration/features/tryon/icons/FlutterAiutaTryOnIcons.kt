package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.icons

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon

@Serializable
data class FlutterAiutaTryOnIcons(
    @SerialName("tryOn20")
    val tryOn20: FlutterAiutaIcon
)