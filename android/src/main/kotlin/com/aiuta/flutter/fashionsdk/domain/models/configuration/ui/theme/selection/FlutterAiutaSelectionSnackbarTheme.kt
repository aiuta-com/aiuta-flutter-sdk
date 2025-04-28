package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.selection

import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.selection.colors.FlutterAiutaSelectionSnackbarColors
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.selection.icons.FlutterAiutaSelectionSnackbarIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.selection.strings.FlutterAiutaSelectionSnackbarStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaSelectionSnackbarTheme(
    @SerialName("strings")
    val strings: FlutterAiutaSelectionSnackbarStrings,

    @SerialName("icons")
    val icons: FlutterAiutaSelectionSnackbarIcons,

    @SerialName("colors")
    val colors: FlutterAiutaSelectionSnackbarColors
)