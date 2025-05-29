package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.powerbar.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaPowerBarStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaPowerBarStringsBuiltIn : FlutterAiutaPowerBarStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaPowerBarStringsCustom(
    @SerialName("poweredByAiuta")
    val poweredByAiuta: String
) : FlutterAiutaPowerBarStrings