package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.cart.outfit.strings

import com.aiuta.fashionsdk.configuration.features.tryon.cart.outfit.strings.AiutaTryOnCartOutfitFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart.outfit.strings.FlutterAiutaTryOnCartOutfitStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart.outfit.strings.FlutterAiutaTryOnCartOutfitStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart.outfit.strings.FlutterAiutaTryOnCartOutfitStringsCustom

fun FlutterAiutaTryOnCartOutfitStrings.toNative(): AiutaTryOnCartOutfitFeatureStrings {
    return when (this) {
        is FlutterAiutaTryOnCartOutfitStringsBuiltIn -> AiutaTryOnCartOutfitFeatureStrings.Default()
        is FlutterAiutaTryOnCartOutfitStringsCustom -> object : AiutaTryOnCartOutfitFeatureStrings {
            override val addToCartOutfit = this@toNative.addToCartOutfit
        }
    }
}

