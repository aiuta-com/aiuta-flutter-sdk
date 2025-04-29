package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.toggles

import com.aiuta.fashionsdk.configuration.features.tryon.toggles.AiutaTryOnFeatureToggles
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.toggles.FlutterAiutaTryOnToggles

fun FlutterAiutaTryOnToggles.toNative(): AiutaTryOnFeatureToggles {
    return object : AiutaTryOnFeatureToggles {
        override val isBackgroundExecutionAllowed = this@toNative.isBackgroundExecutionAllowed
    }
}