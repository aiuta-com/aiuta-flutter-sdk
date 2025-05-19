package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.powerbar.colors

import com.aiuta.fashionsdk.configuration.ui.theme.powerby.colors.AiutaPowerBarColorScheme
import com.aiuta.fashionsdk.configuration.ui.theme.powerby.colors.AiutaPowerBarThemeColors
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.powerbar.colors.FlutterAiutaPowerBarColors
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.powerbar.colors.FlutterAiutaPowerBarColorsScheme

fun FlutterAiutaPowerBarColors.toNative(): AiutaPowerBarThemeColors {
    return object : AiutaPowerBarThemeColors {
        override val aiuta = this@toNative.aiuta.toNative()
    }
}

fun FlutterAiutaPowerBarColorsScheme.toNative(): AiutaPowerBarColorScheme {
    return when (this) {
        FlutterAiutaPowerBarColorsScheme.STANDARD -> AiutaPowerBarColorScheme.STANDARD
        FlutterAiutaPowerBarColorsScheme.PRIMARY -> AiutaPowerBarColorScheme.PRIMARY
    }
}