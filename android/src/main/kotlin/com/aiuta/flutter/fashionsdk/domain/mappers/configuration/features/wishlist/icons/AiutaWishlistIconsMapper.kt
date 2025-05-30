package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.wishlist.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.defaults.icons.features.wishlist.DefaultAiutaWishlistFeatureIcons
import com.aiuta.fashionsdk.configuration.features.wishlist.icons.AiutaWishlistFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.icons.FlutterAiutaWishlistIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.icons.FlutterAiutaWishlistIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.icons.FlutterAiutaWishlistIconsCustom

fun FlutterAiutaWishlistIcons.toNative(
    assetManager: AssetManager
): AiutaWishlistFeatureIcons {
    return when (this) {
        is FlutterAiutaWishlistIconsBuiltIn -> DefaultAiutaWishlistFeatureIcons()
        is FlutterAiutaWishlistIconsCustom -> object : AiutaWishlistFeatureIcons {
            override val wishlist24 = this@toNative.wishlist24.toNative(assetManager)
            override val wishlistFill24 = this@toNative.wishlistFill24.toNative(assetManager)
        }
    }
}