package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.selection.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaSelectionSnackbarStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaSelectionSnackbarStringsBuiltIn : FlutterAiutaSelectionSnackbarStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaSelectionSnackbarStringsCustom(
    @SerialName("select")
    val select: String,

    @SerialName("cancel")
    val cancel: String,

    @SerialName("selectAll")
    val selectAll: String,

    @SerialName("unselectAll")
    val unselectAll: String
) : FlutterAiutaSelectionSnackbarStrings