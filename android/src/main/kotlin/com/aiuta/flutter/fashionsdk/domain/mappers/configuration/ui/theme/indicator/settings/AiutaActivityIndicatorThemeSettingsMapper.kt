package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.indicator.settings

import com.aiuta.fashionsdk.configuration.ui.theme.indicator.settings.AiutaActivityIndicatorThemeSettings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.indicator.settings.FlutterAiutaActivityIndicatorThemeSettings

fun FlutterAiutaActivityIndicatorThemeSettings.toNative(): AiutaActivityIndicatorThemeSettings {
    return object : AiutaActivityIndicatorThemeSettings {
        override val indicationDelay: Int = this@toNative.indicationDelay
        override val spinDuration: Int = this@toNative.spinDuration
    }
}