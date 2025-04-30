package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.toggles

import com.aiuta.fashionsdk.tryon.compose.domain.models.configuration.toggles.AiutaToggles
import com.aiuta.flutter.fashionsdk.domain.models.configuration.toggles.PlatformAiutaToggles

@Deprecated("Migrate to Flutter")
fun PlatformAiutaToggles.toAiutaToggles(): AiutaToggles {
    return AiutaToggles(
        isHistoryAvailable = isHistoryAvailable,
        isWishlistAvailable = isWishlistAvailable,
        isPreOnboardingAvailable = isPreOnboardingAvailable,
        isShareAvailable = isShareAvailable,
        isBackgroundExecutionAllowed = isBackgroundExecutionAllowed,
    )
}