package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.history.strings

import com.aiuta.fashionsdk.configuration.features.tryon.history.strings.AiutaTryOnGenerationsHistoryFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.strings.FlutterAiutaTryOnGenerationsHistoryStrings

fun FlutterAiutaTryOnGenerationsHistoryStrings.toNative(): AiutaTryOnGenerationsHistoryFeatureStrings {
    return object : AiutaTryOnGenerationsHistoryFeatureStrings {
        override val generationsHistoryPageTitle = this@toNative.generationsHistoryPageTitle
    }
}