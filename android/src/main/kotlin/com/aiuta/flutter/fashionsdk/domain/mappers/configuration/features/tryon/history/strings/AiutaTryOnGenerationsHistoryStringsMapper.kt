package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.history.strings

import com.aiuta.fashionsdk.configuration.features.tryon.history.strings.AiutaTryOnGenerationsHistoryFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.strings.FlutterAiutaTryOnGenerationsHistoryStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.strings.FlutterAiutaTryOnGenerationsHistoryStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.strings.FlutterAiutaTryOnGenerationsHistoryStringsCustom

fun FlutterAiutaTryOnGenerationsHistoryStrings.toNative(): AiutaTryOnGenerationsHistoryFeatureStrings {
    return when (this) {
        is FlutterAiutaTryOnGenerationsHistoryStringsBuiltIn -> AiutaTryOnGenerationsHistoryFeatureStrings.Default()
        is FlutterAiutaTryOnGenerationsHistoryStringsCustom -> object : AiutaTryOnGenerationsHistoryFeatureStrings {
            override val generationsHistoryPageTitle = this@toNative.generationsHistoryPageTitle
        }
    }
}