package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.icons

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaWelcomeScreenIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaWelcomeScreenIconsCustom(
    @SerialName("welcome82")
    val welcome82: FlutterAiutaIcon
) : FlutterAiutaWelcomeScreenIcons