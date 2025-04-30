package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.button.typography

import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.ui.theme.button.typography.AiutaButtonThemeTypography
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.typography.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.button.typography.FlutterAiutaButtonTypography

fun FlutterAiutaButtonTypography.toNative(fontFamily: FontFamily?): AiutaButtonThemeTypography {
    return object : AiutaButtonThemeTypography {
        override val buttonM = this@toNative.buttonM.toNative(fontFamily)
        override val buttonS = this@toNative.buttonS.toNative(fontFamily)
    }
}