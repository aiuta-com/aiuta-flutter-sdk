package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar.typography

import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.typography.FlutterAiutaTextStyle
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaPageBarTypography(
    @SerialName("pageTitle")
    val pageTitle: FlutterAiutaTextStyle
)