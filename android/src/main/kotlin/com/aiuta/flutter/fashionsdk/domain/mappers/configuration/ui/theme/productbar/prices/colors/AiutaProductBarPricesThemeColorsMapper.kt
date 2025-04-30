package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.productbar.prices.colors

import com.aiuta.fashionsdk.configuration.ui.theme.productbar.prices.colors.AiutaProductBarPricesThemeColors
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.color.toColor
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.prices.colors.FlutterAiutaProductBarPricesColors

fun FlutterAiutaProductBarPricesColors.toNative(): AiutaProductBarPricesThemeColors {
    return object : AiutaProductBarPricesThemeColors {
        override val discountedPrice = this@toNative.discountedPrice.toColor()
    }
}