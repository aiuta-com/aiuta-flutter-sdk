package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.bottomsheet.grabber

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaBottomSheetGrabber(
    @SerialName("width")
    val width: Double,

    @SerialName("height")
    val height: Double,

    @SerialName("topPadding")
    val topPadding: Double
)