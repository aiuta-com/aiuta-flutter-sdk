package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaConsentStandaloneStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaConsentStandaloneStringsBuiltIn : FlutterAiutaConsentStandaloneStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaConsentStandaloneStringsCustom(
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
) : FlutterAiutaConsentStandaloneStrings