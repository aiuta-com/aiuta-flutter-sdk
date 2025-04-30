package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.strings

import com.aiuta.fashionsdk.configuration.features.tryon.strings.AiutaTryOnFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.strings.FlutterAiutaTryOnStrings

fun FlutterAiutaTryOnStrings.toNative(): AiutaTryOnFeatureStrings {
    return object : AiutaTryOnFeatureStrings {
        override val tryOnPageTitle = this@toNative.tryOnPageTitle
        override val tryOn = this@toNative.tryOn
    }
}