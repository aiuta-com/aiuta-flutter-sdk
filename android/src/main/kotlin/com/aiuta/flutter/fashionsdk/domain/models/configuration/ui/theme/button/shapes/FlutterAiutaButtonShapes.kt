package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.button.shapes

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaButtonShapes(
    @SerialName("buttonM")
    val buttonM: Double,

    @SerialName("buttonS")
    val buttonS: Double
)