package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.powerbar.colors

import com.aiuta.fashionsdk.configuration.ui.theme.powerby.colors.AiutaPowerBarThemeColors
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.color.toColor
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.powerbar.colors.FlutterAiutaPowerBarColors

fun FlutterAiutaPowerBarColors.toNative(): AiutaPowerBarThemeColors {
    return object : AiutaPowerBarThemeColors {
        override val aiuta = this@toNative.aiuta.toColor()
    }
}