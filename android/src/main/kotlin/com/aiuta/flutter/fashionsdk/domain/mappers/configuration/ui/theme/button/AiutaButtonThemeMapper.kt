package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.button

import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.ui.theme.button.AiutaButtonTheme
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.button.FlutterAiutaButtonTheme
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.button.typography.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.button.shapes.toNative

fun FlutterAiutaButtonTheme.toNative(
    fontFamily: FontFamily?
): AiutaButtonTheme {
    return AiutaButtonTheme(
        typography = typography.toNative(fontFamily),
        shapes = shapes.toNative()
    )
}