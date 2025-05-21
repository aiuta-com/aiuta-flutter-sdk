package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.color

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
enum class FlutterAiutaColorScheme {
    @SerialName("light")
    LIGHT,

    @SerialName("dark")
    DARK,
}