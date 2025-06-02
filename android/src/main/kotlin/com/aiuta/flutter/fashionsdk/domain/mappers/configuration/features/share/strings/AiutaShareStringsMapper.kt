package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.share.strings

import com.aiuta.fashionsdk.configuration.features.share.strings.AiutaShareFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.strings.FlutterAiutaShareStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.strings.FlutterAiutaShareStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.strings.FlutterAiutaShareStringsCustom

fun FlutterAiutaShareStrings.toNative(): AiutaShareFeatureStrings {
    return when (this) {
        is FlutterAiutaShareStringsBuiltIn -> AiutaShareFeatureStrings.Default()
        is FlutterAiutaShareStringsCustom -> object : AiutaShareFeatureStrings {
            override val shareButton = this@toNative.shareButton
        }
    }
}