package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.productbar.prices

import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.ui.theme.productbar.prices.AiutaProductBarPricesTheme
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.prices.FlutterAiutaProductBarPrices
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.productbar.prices.typography.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.productbar.prices.colors.toNative

fun FlutterAiutaProductBarPrices.toNative(
    fontFamily: FontFamily?
): AiutaProductBarPricesTheme {
    return AiutaProductBarPricesTheme(
        typography = typography.toNative(fontFamily),
        colors = colors.toNative()
    )
}