package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.theme.gradients

import com.aiuta.fashionsdk.compose.tokens.gradient.AiutaGradients
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.color.toColor
import com.aiuta.flutter.fashionsdk.domain.models.configuration.theme.gradients.PlatformAiutaGradients

@Deprecated("Migrate to Flutter")
fun PlatformAiutaGradients.toAiutaGradients(): AiutaGradients {
    return AiutaGradients(
        loadingAnimation = this.loadingAnimation.map { argbString -> argbString.toColor() },
        tryOnButtonBackground = this.tryOnButtonBackground.map { argbString -> argbString.toColor() },
    )
}
