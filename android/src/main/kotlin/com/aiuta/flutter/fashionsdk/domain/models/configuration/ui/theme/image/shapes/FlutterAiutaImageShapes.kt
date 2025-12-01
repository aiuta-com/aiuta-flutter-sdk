package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.image.shapes

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaImageShapes(
    @SerialName("imageL")
    val imageL: Double,

    @SerialName("imageM")
    val imageM: Double,

    @SerialName("imageS")
    val imageS: Double,
)