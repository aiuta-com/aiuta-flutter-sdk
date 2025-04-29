package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.label

import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.ui.theme.label.AiutaLabelTheme
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.label.typography.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.label.FlutterAiutaLabelTheme

fun FlutterAiutaLabelTheme.toNative(fontFamily: FontFamily?): AiutaLabelTheme {
    return AiutaLabelTheme(
        typography = typography.toNative(fontFamily)
    )
}