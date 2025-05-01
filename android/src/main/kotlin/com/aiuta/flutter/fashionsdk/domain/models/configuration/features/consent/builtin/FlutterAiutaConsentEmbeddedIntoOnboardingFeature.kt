package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.builtin.strings.FlutterAiutaConsentEmbeddedStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
@SerialName(FlutterAiutaConsentFeature.Companion.TYPE_EMBEDDED_INTO_ONBOARDING)
data class FlutterAiutaConsentEmbeddedIntoOnboardingFeature(
    @SerialName("strings")
    val strings: FlutterAiutaConsentEmbeddedStrings
): FlutterAiutaConsentFeature()