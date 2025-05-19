package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.builtin

import com.aiuta.fashionsdk.configuration.features.consent.AiutaConsentEmbeddedIntoOnboardingFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.FlutterAiutaConsentEmbeddedIntoOnboardingFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.builtin.strings.toNative

fun FlutterAiutaConsentEmbeddedIntoOnboardingFeature.toNativeEmbedded(): AiutaConsentEmbeddedIntoOnboardingFeature {
    return AiutaConsentEmbeddedIntoOnboardingFeature(
        strings = strings.toNative()
    )
}