package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.button.typography

import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.typography.FlutterAiutaTextStyle
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaButtonTypography(
    @SerialName("buttonM")
    val buttonM: FlutterAiutaTextStyle,

    @SerialName("buttonS")
    val buttonS: FlutterAiutaTextStyle
)