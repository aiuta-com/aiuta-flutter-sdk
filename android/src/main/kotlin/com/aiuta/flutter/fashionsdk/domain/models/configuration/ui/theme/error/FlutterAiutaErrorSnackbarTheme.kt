package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.error

import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.error.colors.FlutterAiutaErrorSnackbarThemeColors
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.error.icons.FlutterAiutaErrorSnackbarThemeIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.error.strings.FlutterAiutaErrorSnackbarThemeStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaErrorSnackbarTheme(
    @SerialName("strings")
    val strings: FlutterAiutaErrorSnackbarThemeStrings,

    @SerialName("icons")
    val icons: FlutterAiutaErrorSnackbarThemeIcons,

    @SerialName("colors")
    val colors: FlutterAiutaErrorSnackbarThemeColors
)