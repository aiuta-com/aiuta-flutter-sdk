package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart.outfit.FlutterAiutaTryOnCartOutfitFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart.strings.FlutterAiutaTryOnCartStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTryOnCartFeature(
    @SerialName("outfit")
    val outfit: FlutterAiutaTryOnCartOutfitFeature? = null,
    @SerialName("strings")
    val strings: FlutterAiutaTryOnCartStrings
)