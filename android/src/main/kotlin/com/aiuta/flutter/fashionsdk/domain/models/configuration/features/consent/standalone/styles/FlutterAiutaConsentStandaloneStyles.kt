package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.styles

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaConsentStandaloneStyles(
    @SerialName("drawBordersAroundConsents")
    val drawBordersAroundConsents: Boolean
)