package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.builtin.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaConsentEmbeddedStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
class FlutterAiutaConsentEmbeddedStringsBuiltIn(
    @SerialName("termsOfServiceUrl")
    val termsOfServiceUrl: String
) : FlutterAiutaConsentEmbeddedStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
class FlutterAiutaConsentEmbeddedStringsCustom(
    @SerialName("consentHtml")
    val consentHtml: String
): FlutterAiutaConsentEmbeddedStrings