package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.pagebar.typography

import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.ui.theme.pagebar.typography.AiutaPageBarThemeTypography
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.typography.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar.typography.FlutterAiutaPageBarTypography
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar.typography.FlutterAiutaPageBarTypographyBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar.typography.FlutterAiutaPageBarTypographyCustom

fun FlutterAiutaPageBarTypography.toNative(fontFamily: FontFamily?): AiutaPageBarThemeTypography {
    return when (this) {
        is FlutterAiutaPageBarTypographyBuiltIn -> AiutaPageBarThemeTypography.Default()
        is FlutterAiutaPageBarTypographyCustom -> object : AiutaPageBarThemeTypography {
            override val pageTitle = this@toNative.pageTitle.toNative(fontFamily)
        }
    }
}