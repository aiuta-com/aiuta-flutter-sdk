package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar

import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.icon.FlutterAiutaProductBarThemeIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.prices.FlutterAiutaProductBarPrices
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.typography.FlutterAiutaProductBarTypography
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.toggles.FlutterAiutaProductBarToggles
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaProductBarTheme(
    @SerialName("prices")
    val prices: FlutterAiutaProductBarPrices? = null,

    @SerialName("typography")
    val typography: FlutterAiutaProductBarTypography,

    @SerialName("toggles")
    val toggles: FlutterAiutaProductBarToggles,

    @SerialName("icons")
    val icons: FlutterAiutaProductBarThemeIcons,
)