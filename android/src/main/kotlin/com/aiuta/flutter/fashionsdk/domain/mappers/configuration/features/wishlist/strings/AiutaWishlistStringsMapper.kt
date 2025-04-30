package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.wishlist.strings

import com.aiuta.fashionsdk.configuration.features.wishlist.strings.AiutaWishlistFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.strings.FlutterAiutaWishlistStrings

fun FlutterAiutaWishlistStrings.toNative(): AiutaWishlistFeatureStrings {
    return object : AiutaWishlistFeatureStrings {
        override val wishlistButtonAdd = this@toNative.wishlistButtonAdd
    }
}