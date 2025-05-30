package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.icons

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaTryOnGenerationsHistoryIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaTryOnGenerationsHistoryIconsBuiltIn : FlutterAiutaTryOnGenerationsHistoryIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaTryOnGenerationsHistoryIconsCustom(
    @SerialName("history24")
    val history24: FlutterAiutaIcon
) : FlutterAiutaTryOnGenerationsHistoryIcons