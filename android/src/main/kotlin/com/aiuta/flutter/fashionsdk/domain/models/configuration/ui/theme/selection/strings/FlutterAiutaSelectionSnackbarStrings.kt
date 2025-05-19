package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.selection.strings

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaSelectionSnackbarStrings(
    @SerialName("select")
    val select: String,

    @SerialName("cancel")
    val cancel: String,

    @SerialName("selectAll")
    val selectAll: String,

    @SerialName("unselectAll")
    val unselectAll: String
)