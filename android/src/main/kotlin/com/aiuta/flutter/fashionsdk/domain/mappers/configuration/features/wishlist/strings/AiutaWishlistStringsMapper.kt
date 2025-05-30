package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.wishlist.strings

import com.aiuta.fashionsdk.configuration.features.wishlist.strings.AiutaWishlistFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.strings.FlutterAiutaWishlistStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.strings.FlutterAiutaWishlistStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.strings.FlutterAiutaWishlistStringsCustom

fun FlutterAiutaWishlistStrings.toNative(): AiutaWishlistFeatureStrings {
    return when (this) {
        is FlutterAiutaWishlistStringsBuiltIn -> AiutaWishlistFeatureStrings.Default()
        is FlutterAiutaWishlistStringsCustom -> object : AiutaWishlistFeatureStrings {
            override val wishlistButtonAdd = this@toNative.wishlistButtonAdd
        }
    }
}