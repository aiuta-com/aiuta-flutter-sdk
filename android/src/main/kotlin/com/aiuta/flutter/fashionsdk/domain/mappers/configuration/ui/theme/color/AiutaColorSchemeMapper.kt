package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.color

import com.aiuta.fashionsdk.configuration.ui.theme.color.AiutaColorThemeScheme
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.color.FlutterAiutaColorScheme

fun FlutterAiutaColorScheme.toNative(): AiutaColorThemeScheme {
    return when(this) {
        FlutterAiutaColorScheme.LIGHT -> AiutaColorThemeScheme.LIGHT
        FlutterAiutaColorScheme.DARK -> AiutaColorThemeScheme.DARK
    }
}