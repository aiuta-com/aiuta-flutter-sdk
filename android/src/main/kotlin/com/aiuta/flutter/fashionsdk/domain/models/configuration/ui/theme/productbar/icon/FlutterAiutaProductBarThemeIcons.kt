package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.icon

import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaProductBarThemeIcons(
    @SerialName("arrow16")
    val arrow16: FlutterAiutaIcon
)