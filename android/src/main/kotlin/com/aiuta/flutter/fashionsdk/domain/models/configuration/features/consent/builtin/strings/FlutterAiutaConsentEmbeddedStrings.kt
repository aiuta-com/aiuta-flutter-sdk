package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.builtin.strings

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaConsentEmbeddedStrings(
    @SerialName("consentHtml")
    val consentHtml: String
)