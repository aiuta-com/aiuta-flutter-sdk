package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart.outfit

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart.outfit.strings.FlutterAiutaTryOnCartOutfitStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTryOnCartOutfitFeature(
    @SerialName("strings")
    val strings: FlutterAiutaTryOnCartOutfitStrings
)

