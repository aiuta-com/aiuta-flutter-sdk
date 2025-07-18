package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.productbar.typography

import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.ui.theme.productbar.typography.AiutaProductBarThemeTypography
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.typography.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.typography.FlutterAiutaProductBarTypography
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.typography.FlutterAiutaProductBarTypographyBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.typography.FlutterAiutaProductBarTypographyCustom

fun FlutterAiutaProductBarTypography.toNative(
    fontFamily: FontFamily?
): AiutaProductBarThemeTypography {
    return when (this) {
        is FlutterAiutaProductBarTypographyBuiltIn -> AiutaProductBarThemeTypography.Default()
        is FlutterAiutaProductBarTypographyCustom -> object : AiutaProductBarThemeTypography {
            override val product = this@toNative.product.toNative(fontFamily)
            override val brand = this@toNative.brand.toNative(fontFamily)
        }
    }
}