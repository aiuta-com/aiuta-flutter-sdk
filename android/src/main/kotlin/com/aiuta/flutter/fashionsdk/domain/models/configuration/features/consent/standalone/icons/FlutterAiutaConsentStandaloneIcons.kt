package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.icons

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaConsentStandaloneIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaConsentStandaloneIconsCustom(
    @SerialName("consentTitle24")
    val consentTitle24: FlutterAiutaIcon? = null
) : FlutterAiutaConsentStandaloneIcons