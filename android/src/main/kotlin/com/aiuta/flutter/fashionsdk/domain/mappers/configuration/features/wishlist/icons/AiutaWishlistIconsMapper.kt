package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.wishlist.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.wishlist.icons.AiutaWishlistFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.icons.FlutterAiutaWishlistIcons

fun FlutterAiutaWishlistIcons.toNative(
    assetManager: AssetManager
): AiutaWishlistFeatureIcons {
    return object : AiutaWishlistFeatureIcons {
        override val wishlist24 = this@toNative.wishlist24.toNative(assetManager)
        override val wishlistFill24 = this@toNative.wishlistFill24.toNative(assetManager)
    }
}