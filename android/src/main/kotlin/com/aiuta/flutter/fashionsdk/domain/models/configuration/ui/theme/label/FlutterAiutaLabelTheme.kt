package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.label

import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.label.typography.FlutterAiutaLabelTypography
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaLabelTheme(
    @SerialName("typography")
    val typography: FlutterAiutaLabelTypography
)