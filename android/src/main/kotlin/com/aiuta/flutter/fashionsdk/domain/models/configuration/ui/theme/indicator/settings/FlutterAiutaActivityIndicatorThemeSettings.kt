package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.indicator.settings

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaActivityIndicatorThemeSettings(
    @SerialName("indicationDelay")
    val indicationDelay: Int,
    @SerialName("spinDuration")
    val spinDuration: Int,
)