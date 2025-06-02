package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.cart.strings

import com.aiuta.fashionsdk.configuration.features.tryon.cart.strings.AiutaTryOnCartFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart.strings.FlutterAiutaTryOnCartStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart.strings.FlutterAiutaTryOnCartStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart.strings.FlutterAiutaTryOnCartStringsCustom

fun FlutterAiutaTryOnCartStrings.toNative(): AiutaTryOnCartFeatureStrings {
    return when (this) {
        is FlutterAiutaTryOnCartStringsBuiltIn -> AiutaTryOnCartFeatureStrings.Default()
        is FlutterAiutaTryOnCartStringsCustom -> object : AiutaTryOnCartFeatureStrings {
            override val addToCart = this@toNative.addToCart
        }
    }
}