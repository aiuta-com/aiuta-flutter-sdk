package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.indicator

import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.indicator.colors.FlutterAiutaActivityIndicatorThemeColors
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.indicator.icons.FlutterAiutaActivityIndicatorThemeIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.indicator.settings.FlutterAiutaActivityIndicatorThemeSettings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaActivityIndicatorTheme(
    @SerialName("icons")
    val icons: FlutterAiutaActivityIndicatorThemeIcons,
    @SerialName("colors")
    val colors: FlutterAiutaActivityIndicatorThemeColors,
    @SerialName("settings")
    val settings: FlutterAiutaActivityIndicatorThemeSettings,
)