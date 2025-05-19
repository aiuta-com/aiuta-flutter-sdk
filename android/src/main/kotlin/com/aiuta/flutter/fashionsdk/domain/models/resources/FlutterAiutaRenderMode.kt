package com.aiuta.flutter.fashionsdk.domain.models.resources

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
enum class FlutterAiutaRenderMode {
    @SerialName("original")
    ORIGINAL,

    @SerialName("template")
    TEMPLATE
}