package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.cart.strings

import com.aiuta.fashionsdk.configuration.features.tryon.cart.strings.AiutaTryOnCartFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart.strings.FlutterAiutaTryOnCartStrings

fun FlutterAiutaTryOnCartStrings.toNative(): AiutaTryOnCartFeatureStrings {
    return object : AiutaTryOnCartFeatureStrings {
        override val addToCart = this@toNative.addToCart
    }
}