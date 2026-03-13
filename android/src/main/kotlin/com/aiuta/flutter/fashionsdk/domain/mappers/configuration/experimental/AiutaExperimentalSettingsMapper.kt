package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.experimental

import com.aiuta.fashionsdk.configuration.experimental.AiutaExperimentalSettings
import com.aiuta.fashionsdk.configuration.experimental.DefaultAiutaExperimentalSettings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.experimental.FlutterAiutaExperimentalSettings

fun FlutterAiutaExperimentalSettings.toNative(): AiutaExperimentalSettings {
    return AiutaExperimentalSettings(
        shouldOpenLinksInCustomTab = shouldOpenLinksInCustomTab
    )
}
