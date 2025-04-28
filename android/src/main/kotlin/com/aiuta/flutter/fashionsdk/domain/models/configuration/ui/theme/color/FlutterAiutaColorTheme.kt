package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.color

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaColorTheme(
    @SerialName("brand")
    val brand: String,

    @SerialName("primary")
    val primary: String,

    @SerialName("secondary")
    val secondary: String,

    @SerialName("onDark")
    val onDark: String,

    @SerialName("onLight")
    val onLight: String,

    @SerialName("background")
    val background: String,

    @SerialName("screen")
    val screen: String,

    @SerialName("neutral")
    val neutral: String,

    @SerialName("border")
    val border: String,

    @SerialName("outline")
    val outline: String
)