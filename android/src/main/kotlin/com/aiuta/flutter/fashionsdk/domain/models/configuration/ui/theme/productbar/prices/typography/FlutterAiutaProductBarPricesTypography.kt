package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.prices.typography

import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.typography.FlutterAiutaTextStyle
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaProductBarPricesTypography(
    @SerialName("price")
    val price: FlutterAiutaTextStyle
)