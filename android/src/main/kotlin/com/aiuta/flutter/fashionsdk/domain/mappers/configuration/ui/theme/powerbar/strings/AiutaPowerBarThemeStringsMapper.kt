package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.powerbar.strings

import com.aiuta.fashionsdk.configuration.ui.theme.powerby.strings.AiutaPowerBarThemeStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.powerbar.strings.FlutterAiutaPowerBarStrings

fun FlutterAiutaPowerBarStrings.toNative(): AiutaPowerBarThemeStrings {
    return object : AiutaPowerBarThemeStrings {
        override val poweredByAiuta = this@toNative.poweredByAiuta
    }
}