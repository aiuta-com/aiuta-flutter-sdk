package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.productbar.prices.typography

import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.ui.theme.productbar.prices.typography.AiutaProductBarPricesThemeTypography
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.typography.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.prices.typography.FlutterAiutaProductBarPricesTypography
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.prices.typography.FlutterAiutaProductBarPricesTypographyBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.prices.typography.FlutterAiutaProductBarPricesTypographyCustom

fun FlutterAiutaProductBarPricesTypography.toNative(
    fontFamily: FontFamily?
): AiutaProductBarPricesThemeTypography {
    return when (this) {
        is FlutterAiutaProductBarPricesTypographyBuiltIn -> AiutaProductBarPricesThemeTypography.Default()
        is FlutterAiutaProductBarPricesTypographyCustom -> object : AiutaProductBarPricesThemeTypography {
            override val price = this@toNative.price.toNative(fontFamily)
        }
    }
}