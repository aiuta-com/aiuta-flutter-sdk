package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.icons

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon

@Serializable
data class FlutterAiutaShareIcons(
    @SerialName("share24")
    val share24: FlutterAiutaIcon
)