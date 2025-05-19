package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.typography

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
class FlutterAiutaFont(
    @SerialName("filePath")
    val filePath: String,

    @SerialName("family")
    val family: String,

    @SerialName("weight")
    val weight: FlutterAiutaFontWeight,
)