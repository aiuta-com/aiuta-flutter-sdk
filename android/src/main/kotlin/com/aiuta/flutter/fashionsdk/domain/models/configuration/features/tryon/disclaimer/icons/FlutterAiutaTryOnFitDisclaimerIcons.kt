package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.icons

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaTryOnFitDisclaimerIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaTryOnFitDisclaimerIconsCustom(
    @SerialName("info20")
    val info20: FlutterAiutaIcon? = null
) : FlutterAiutaTryOnFitDisclaimerIcons