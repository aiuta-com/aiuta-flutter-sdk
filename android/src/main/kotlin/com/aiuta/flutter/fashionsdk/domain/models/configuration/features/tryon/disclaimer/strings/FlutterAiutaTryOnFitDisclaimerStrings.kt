package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaTryOnFitDisclaimerStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaTryOnFitDisclaimerStringsBuiltIn : FlutterAiutaTryOnFitDisclaimerStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaTryOnFitDisclaimerStringsCustom(
    @SerialName("fitDisclaimerTitle")
    val fitDisclaimerTitle: String,

    @SerialName("fitDisclaimerDescription")
    val fitDisclaimerDescription: String,

    @SerialName("fitDisclaimerButtonClose")
    val fitDisclaimerButtonClose: String
) : FlutterAiutaTryOnFitDisclaimerStrings