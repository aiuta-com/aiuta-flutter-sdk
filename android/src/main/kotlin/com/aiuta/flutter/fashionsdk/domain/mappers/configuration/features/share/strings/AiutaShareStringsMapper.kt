package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.share.strings

import com.aiuta.fashionsdk.configuration.features.share.strings.AiutaShareFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.strings.FlutterAiutaShareStrings

fun FlutterAiutaShareStrings.toNative(): AiutaShareFeatureStrings {
    return object : AiutaShareFeatureStrings {
        override val shareButton = this@toNative.shareButton
    }
}