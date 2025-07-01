package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.base

import com.aiuta.fashionsdk.configuration.features.styles.AiutaComponentStyle
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterAiutaComponentStyle

fun FlutterAiutaComponentStyle.toNative(): AiutaComponentStyle {
    return when (this) {
        FlutterAiutaComponentStyle.BRAND -> AiutaComponentStyle.BRAND
        FlutterAiutaComponentStyle.CONTRAST -> AiutaComponentStyle.CONTRAST
        FlutterAiutaComponentStyle.CONTRAST_INVERTED -> AiutaComponentStyle.CONTRAST_INVERTED
        FlutterAiutaComponentStyle.BLURRED -> AiutaComponentStyle.BLURRED
        FlutterAiutaComponentStyle.BLURRED_WITH_OUTLINE -> AiutaComponentStyle.BLURRED_WITH_OUTLINE
    }
}