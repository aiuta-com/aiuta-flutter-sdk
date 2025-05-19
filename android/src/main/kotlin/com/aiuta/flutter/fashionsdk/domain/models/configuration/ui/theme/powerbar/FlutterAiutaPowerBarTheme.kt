package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.powerbar

import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.powerbar.colors.FlutterAiutaPowerBarColors
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.powerbar.strings.FlutterAiutaPowerBarStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaPowerBarTheme(
    @SerialName("strings")
    val strings: FlutterAiutaPowerBarStrings,

    @SerialName("colors")
    val colors: FlutterAiutaPowerBarColors
)