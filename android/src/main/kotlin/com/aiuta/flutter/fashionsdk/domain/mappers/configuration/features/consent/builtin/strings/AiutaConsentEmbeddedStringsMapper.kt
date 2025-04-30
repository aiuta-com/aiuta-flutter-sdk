package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.builtin.strings

import com.aiuta.fashionsdk.configuration.features.consent.builtin.strings.AiutaConsentEmbeddedIntoOnboardingFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.builtin.strings.FlutterAiutaConsentEmbeddedStrings

fun FlutterAiutaConsentEmbeddedStrings.toNative(): AiutaConsentEmbeddedIntoOnboardingFeatureStrings {
    return object : AiutaConsentEmbeddedIntoOnboardingFeatureStrings {
        override val consentHtml = this@toNative.consentHtml
    }
}