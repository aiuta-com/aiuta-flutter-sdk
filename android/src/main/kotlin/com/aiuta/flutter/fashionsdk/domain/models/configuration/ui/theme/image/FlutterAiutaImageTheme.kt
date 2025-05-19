package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.image

import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.image.icons.FlutterAiutaImageIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.image.shapes.FlutterAiutaImageShapes
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaImageTheme(
    @SerialName("shapes")
    val shapes: FlutterAiutaImageShapes,

    @SerialName("icons")
    val icons: FlutterAiutaImageIcons
)