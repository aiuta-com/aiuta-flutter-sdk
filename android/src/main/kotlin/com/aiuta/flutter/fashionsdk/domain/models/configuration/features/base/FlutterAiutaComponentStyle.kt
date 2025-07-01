package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base

import kotlinx.serialization.Serializable
import kotlinx.serialization.SerialName

@Serializable
enum class FlutterAiutaComponentStyle {
    @SerialName("brand")
    BRAND,

    @SerialName("contrast")
    CONTRAST,

    @SerialName("contrastInverted")
    CONTRAST_INVERTED,

    @SerialName("blurred")
    BLURRED,

    @SerialName("blurredWithOutline")
    BLURRED_WITH_OUTLINE,
}