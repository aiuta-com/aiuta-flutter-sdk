package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.indicator.icons

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaActivityIndicatorThemeIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaActivityIndicatorThemeIconsBuiltIn : FlutterAiutaActivityIndicatorThemeIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaActivityIndicatorThemeIconsCustom(
    @SerialName("loading14")
    val loading14: FlutterAiutaIcon
) : FlutterAiutaActivityIndicatorThemeIcons