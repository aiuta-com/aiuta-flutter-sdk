package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.icon

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaProductBarThemeIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaProductBarThemeIconsBuiltIn : FlutterAiutaProductBarThemeIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaProductBarThemeIconsCustom(
    @SerialName("arrow16")
    val arrow16: FlutterAiutaIcon
) : FlutterAiutaProductBarThemeIcons