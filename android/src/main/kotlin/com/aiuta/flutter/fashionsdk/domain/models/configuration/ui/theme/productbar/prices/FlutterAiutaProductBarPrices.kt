package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.prices

import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.prices.colors.FlutterAiutaProductBarPricesColors
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.prices.typography.FlutterAiutaProductBarPricesTypography
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaProductBarPrices(
    @SerialName("typography")
    val typography: FlutterAiutaProductBarPricesTypography,

    @SerialName("colors")
    val colors: FlutterAiutaProductBarPricesColors
)