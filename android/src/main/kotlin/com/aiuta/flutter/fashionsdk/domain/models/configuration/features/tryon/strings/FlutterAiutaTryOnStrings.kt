package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaTryOnStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaTryOnStringsBuiltIn : FlutterAiutaTryOnStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaTryOnStringsCustom(
    @SerialName("tryOnPageTitle")
    val tryOnPageTitle: String,

    @SerialName("tryOn")
    val tryOn: String
) : FlutterAiutaTryOnStrings