package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart.strings.FlutterAiutaTryOnCartStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTryOnCartFeature(
    @SerialName("strings")
    val strings: FlutterAiutaTryOnCartStrings
)