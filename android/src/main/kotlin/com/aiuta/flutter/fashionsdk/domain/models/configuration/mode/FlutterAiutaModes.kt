package com.aiuta.flutter.fashionsdk.domain.models.configuration.mode

import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.FlutterAiutaShoesMode
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaModes(
    @SerialName("shoes")
    val shoes: FlutterAiutaShoesMode? = null,
)
