package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.data

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaConsentStandaloneData(
    @SerialName("consents")
    val consents: List<FlutterAiutaConsent>
)