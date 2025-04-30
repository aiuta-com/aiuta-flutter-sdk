package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.styles

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
enum class FlutterAiutaTryOnLoadingPageStyle {
    @SerialName("Primary")
    PRIMARY,

    @SerialName("Blurred")
    BLURRED
}