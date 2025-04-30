package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.bottomsheet.typography

import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.typography.FlutterAiutaTextStyle
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaBottomSheetTypography(
    @SerialName("iconButton")
    val iconButton: FlutterAiutaTextStyle,

    @SerialName("chipsButton")
    val chipsButton: FlutterAiutaTextStyle
)