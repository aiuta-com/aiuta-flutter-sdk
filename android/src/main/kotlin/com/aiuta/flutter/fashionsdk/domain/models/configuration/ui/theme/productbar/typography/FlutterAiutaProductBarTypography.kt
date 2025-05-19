package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.typography

import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.typography.FlutterAiutaTextStyle
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaProductBarTypography(
    @SerialName("product")
    val product: FlutterAiutaTextStyle,

    @SerialName("brand")
    val brand: FlutterAiutaTextStyle
)