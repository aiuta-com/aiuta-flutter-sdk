package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.powerbar.strings

import com.aiuta.fashionsdk.configuration.ui.theme.powerby.strings.AiutaPowerBarThemeStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.powerbar.strings.FlutterAiutaPowerBarStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.powerbar.strings.FlutterAiutaPowerBarStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.powerbar.strings.FlutterAiutaPowerBarStringsCustom

fun FlutterAiutaPowerBarStrings.toNative(): AiutaPowerBarThemeStrings {
    return when (this) {
        is FlutterAiutaPowerBarStringsBuiltIn -> AiutaPowerBarThemeStrings.Default()
        is FlutterAiutaPowerBarStringsCustom -> object : AiutaPowerBarThemeStrings {
            override val poweredByAiuta = this@toNative.poweredByAiuta
        }
    }
}