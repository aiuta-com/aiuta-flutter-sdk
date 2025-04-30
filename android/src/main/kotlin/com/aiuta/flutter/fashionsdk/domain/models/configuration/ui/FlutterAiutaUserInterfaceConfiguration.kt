package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui

import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.meta.FlutterAiutaPresentationStyle
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.FlutterAiutaTheme
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaUserInterfaceConfiguration(
    @SerialName("presentationStyle")
    val presentationStyle: FlutterAiutaPresentationStyle,

    @SerialName("theme")
    val theme: FlutterAiutaTheme
)