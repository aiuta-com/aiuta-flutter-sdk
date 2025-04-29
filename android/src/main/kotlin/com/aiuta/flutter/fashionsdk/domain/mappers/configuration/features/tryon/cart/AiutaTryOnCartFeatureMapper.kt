package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.cart

import com.aiuta.fashionsdk.configuration.features.tryon.cart.AiutaTryOnCartFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.cart.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart.FlutterAiutaTryOnCartFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart.handler.FlutterAiutaTryOnCartFeatureHandler

fun FlutterAiutaTryOnCartFeature.toNative(): AiutaTryOnCartFeature {
    return AiutaTryOnCartFeature(
        strings = strings.toNative(),
        handler = FlutterAiutaTryOnCartFeatureHandler
    )
}