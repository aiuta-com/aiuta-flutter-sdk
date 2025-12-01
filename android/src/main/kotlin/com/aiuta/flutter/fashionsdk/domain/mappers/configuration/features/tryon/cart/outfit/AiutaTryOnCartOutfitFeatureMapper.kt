package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.cart.outfit

import com.aiuta.fashionsdk.configuration.features.tryon.cart.outfit.AiutaTryOnCartOutfitFeature
import com.aiuta.flutter.fashionsdk.domain.listeners.actions.FlutterActionHandler
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.cart.outfit.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart.outfit.FlutterAiutaTryOnCartOutfitFeature

fun FlutterAiutaTryOnCartOutfitFeature.toNative(): AiutaTryOnCartOutfitFeature {
    return AiutaTryOnCartOutfitFeature(
        strings = strings.toNative(),
        handler = FlutterActionHandler,
    )
}

