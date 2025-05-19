package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.button

import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.button.shapes.FlutterAiutaButtonShapes
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.button.typography.FlutterAiutaButtonTypography
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaButtonTheme(
    @SerialName("typography")
    val typography: FlutterAiutaButtonTypography,

    @SerialName("shapes")
    val shapes: FlutterAiutaButtonShapes,
)