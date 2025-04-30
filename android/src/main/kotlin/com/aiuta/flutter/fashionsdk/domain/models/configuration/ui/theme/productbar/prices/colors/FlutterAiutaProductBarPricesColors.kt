package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.prices.colors

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaProductBarPricesColors(
    @SerialName("discountedPrice")
    val discountedPrice: String
)