package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.selection.icons

import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaSelectionSnackbarIcons(
    @SerialName("trash24")
    val trash24: FlutterAiutaIcon,

    @SerialName("check20")
    val check20: FlutterAiutaIcon
)