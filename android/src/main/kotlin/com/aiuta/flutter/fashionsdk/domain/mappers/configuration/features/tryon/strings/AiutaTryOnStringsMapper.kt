package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.strings

import com.aiuta.fashionsdk.configuration.features.tryon.strings.AiutaTryOnFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.strings.FlutterAiutaTryOnStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.strings.FlutterAiutaTryOnStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.strings.FlutterAiutaTryOnStringsCustom

fun FlutterAiutaTryOnStrings.toNative(): AiutaTryOnFeatureStrings {
    return when (this) {
        is FlutterAiutaTryOnStringsBuiltIn -> AiutaTryOnFeatureStrings.Default()
        is FlutterAiutaTryOnStringsCustom -> object : AiutaTryOnFeatureStrings {
            override val tryOnPageTitle = this@toNative.tryOnPageTitle
            override val tryOn = this@toNative.tryOn
            override val outfitTitle = this@toNative.outfitTitle
        }
    }
}