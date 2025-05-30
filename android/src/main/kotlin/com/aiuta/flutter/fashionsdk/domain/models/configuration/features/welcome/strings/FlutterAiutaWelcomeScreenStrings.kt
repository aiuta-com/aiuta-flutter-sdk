package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaWelcomeScreenStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaWelcomeScreenStringsBuiltIn : FlutterAiutaWelcomeScreenStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaWelcomeScreenStringsCustom(
    @SerialName("welcomeTitle")
    val welcomeTitle: String,

    @SerialName("welcomeDescription")
    val welcomeDescription: String,

    @SerialName("welcomeButtonStart")
    val welcomeButtonStart: String
) : FlutterAiutaWelcomeScreenStrings