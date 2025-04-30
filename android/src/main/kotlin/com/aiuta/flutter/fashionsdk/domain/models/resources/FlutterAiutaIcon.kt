package com.aiuta.flutter.fashionsdk.domain.models.resources

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaIcon(
    @SerialName("path")
    val path: String,

    @SerialName("renderMode")
    val renderMode: FlutterAiutaRenderMode
)