package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.strings

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaConsentStandaloneStrings(
    @SerialName("consentPageTitle")
    val consentPageTitle: String? = null,

    @SerialName("consentTitle")
    val consentTitle: String,

    @SerialName("consentDescriptionHtml")
    val consentDescriptionHtml: String,

    @SerialName("consentFooterHtml")
    val consentFooterHtml: String? = null,

    @SerialName("consentButtonAccept")
    val consentButtonAccept: String,

    @SerialName("consentButtonReject")
    val consentButtonReject: String? = null
)