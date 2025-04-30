package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.data

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaConsent(
    @SerialName("id")
    val id: String,

    @SerialName("type")
    val type: FlutterAiutaConsentType,

    @SerialName("html")
    val html: String
)