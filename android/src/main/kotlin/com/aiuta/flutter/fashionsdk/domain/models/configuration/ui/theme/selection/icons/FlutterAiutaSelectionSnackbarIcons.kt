package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.selection.icons

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaSelectionSnackbarIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaSelectionSnackbarIconsBuiltIn : FlutterAiutaSelectionSnackbarIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaSelectionSnackbarIconsCustom(
    @SerialName("trash24")
    val trash24: FlutterAiutaIcon,

    @SerialName("check20")
    val check20: FlutterAiutaIcon
) : FlutterAiutaSelectionSnackbarIcons