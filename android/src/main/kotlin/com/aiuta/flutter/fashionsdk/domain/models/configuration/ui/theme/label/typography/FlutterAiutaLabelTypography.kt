package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.label.typography

import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.typography.FlutterAiutaTextStyle
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaLabelTypography(
    @SerialName("titleL")
    val titleL: FlutterAiutaTextStyle,

    @SerialName("titleM")
    val titleM: FlutterAiutaTextStyle,

    @SerialName("regular")
    val regular: FlutterAiutaTextStyle,

    @SerialName("subtle")
    val subtle: FlutterAiutaTextStyle
)