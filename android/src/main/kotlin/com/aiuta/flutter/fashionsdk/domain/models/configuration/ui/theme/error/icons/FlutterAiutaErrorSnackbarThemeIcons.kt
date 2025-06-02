package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.error.icons

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaErrorSnackbarThemeIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaErrorSnackbarThemeIconsBuiltIn : FlutterAiutaErrorSnackbarThemeIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaErrorSnackbarThemeIconsCustom(
    @SerialName("error36")
    val error36: FlutterAiutaIcon
) : FlutterAiutaErrorSnackbarThemeIcons