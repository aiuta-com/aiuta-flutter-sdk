package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.styles

import com.aiuta.fashionsdk.configuration.features.tryon.styles.AiutaTryOnFeatureStyles
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.color.toColor
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.styles.FlutterAiutaTryOnStyles

fun FlutterAiutaTryOnStyles.toNative(): AiutaTryOnFeatureStyles {
    return object : AiutaTryOnFeatureStyles {
        override val tryOnButtonGradient = this@toNative.tryOnButtonGradient?.map { it.toColor() }
    }
}