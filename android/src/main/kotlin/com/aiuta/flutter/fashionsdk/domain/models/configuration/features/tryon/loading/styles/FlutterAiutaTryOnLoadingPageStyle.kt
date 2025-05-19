package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.styles

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
enum class FlutterAiutaTryOnLoadingPageStyle {
    @SerialName("primary")
    PRIMARY,

    @SerialName("blurred")
    BLURRED,

    @SerialName("blurredWithOutline")
    BLURRED_WITH_OUTLINE,
}