package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.dimensions

import androidx.compose.ui.unit.dp
import com.aiuta.fashionsdk.tryon.compose.domain.models.configuration.dimensions.AiutaDimensions
import com.aiuta.flutter.fashionsdk.domain.models.configuration.theme.dimensions.PlatformAiutaDimensions

@Deprecated("Migrate to Flutter")
fun PlatformAiutaDimensions.toAiutaDimensions(): AiutaDimensions {
    return AiutaDimensions(
        grabberPaddingTop = grabberPaddingTop?.dp,
        grabberWidth = grabberWidth?.dp,
    )
}