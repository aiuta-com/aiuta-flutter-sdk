package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.builtin.strings

import com.aiuta.fashionsdk.configuration.features.consent.builtin.strings.AiutaConsentEmbeddedIntoOnboardingFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.builtin.strings.FlutterAiutaConsentEmbeddedStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.builtin.strings.FlutterAiutaConsentEmbeddedStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.builtin.strings.FlutterAiutaConsentEmbeddedStringsCustom

fun FlutterAiutaConsentEmbeddedStrings.toNative(): AiutaConsentEmbeddedIntoOnboardingFeatureStrings {
    return when (this) {
        is FlutterAiutaConsentEmbeddedStringsBuiltIn -> AiutaConsentEmbeddedIntoOnboardingFeatureStrings.Default(
            termsOfServiceUrl = termsOfServiceUrl
        )
        is FlutterAiutaConsentEmbeddedStringsCustom -> object : AiutaConsentEmbeddedIntoOnboardingFeatureStrings {
            override val consentHtml = this@toNative.consentHtml
        }
    }
}