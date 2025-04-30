package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.bottomsheet.shapes

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaBottomSheetShapes(
    @SerialName("bottomSheet")
    val bottomSheet: Double,

    @SerialName("chipsButton")
    val chipsButton: Double
)