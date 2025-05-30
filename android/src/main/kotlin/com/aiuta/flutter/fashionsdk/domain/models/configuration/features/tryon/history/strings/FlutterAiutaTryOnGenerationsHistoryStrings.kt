package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaTryOnGenerationsHistoryStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaTryOnGenerationsHistoryStringsBuiltIn : FlutterAiutaTryOnGenerationsHistoryStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaTryOnGenerationsHistoryStringsCustom(
    @SerialName("generationsHistoryPageTitle")
    val generationsHistoryPageTitle: String
) : FlutterAiutaTryOnGenerationsHistoryStrings