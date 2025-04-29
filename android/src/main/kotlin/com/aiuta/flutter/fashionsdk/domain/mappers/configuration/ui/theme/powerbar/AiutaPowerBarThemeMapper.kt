package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.powerbar

import com.aiuta.fashionsdk.configuration.ui.theme.powerby.AiutaPowerBarTheme
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.powerbar.colors.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.powerbar.FlutterAiutaPowerBarTheme
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.powerbar.strings.toNative

fun FlutterAiutaPowerBarTheme.toNative(): AiutaPowerBarTheme {
    return AiutaPowerBarTheme(
        strings = strings.toNative(),
        colors = colors.toNative()
    )
}