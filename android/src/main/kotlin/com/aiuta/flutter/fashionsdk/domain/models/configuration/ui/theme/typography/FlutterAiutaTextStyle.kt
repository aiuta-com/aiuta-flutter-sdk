package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.typography

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
class FlutterAiutaTextStyle(
    @SerialName("fontFamily")
    val fontFamily: String,

    @SerialName("fontSize")
    val fontSize: Double,

    @SerialName("fontWeight")
    val fontWeight: FlutterAiutaFontWeight,

    @SerialName("letterSpacing")
    val letterSpacing: Double,

    @SerialName("lineHeight")
    val lineHeight: Double,
)