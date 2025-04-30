package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.pagebar.toggles

import com.aiuta.fashionsdk.configuration.ui.theme.pagebar.toggles.AiutaPageBarThemeToggles
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar.toggles.FlutterAiutaPageBarToggles

fun FlutterAiutaPageBarToggles.toNative(): AiutaPageBarThemeToggles {
    return object : AiutaPageBarThemeToggles {
        override val preferCloseButtonOnTheRight = this@toNative.preferCloseButtonOnTheRight
    }
}