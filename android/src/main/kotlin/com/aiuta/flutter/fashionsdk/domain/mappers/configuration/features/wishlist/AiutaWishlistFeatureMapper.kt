package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.wishlist

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.wishlist.AiutaWishlistFeature
import com.aiuta.flutter.fashionsdk.domain.listeners.actions.FlutterActionHandler
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.wishlist.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.wishlist.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.FlutterAiutaWishlistFeature

fun FlutterAiutaWishlistFeature.toNative(
    assetManager: AssetManager
): AiutaWishlistFeature {
    return AiutaWishlistFeature(
        icons = icons.toNative(assetManager),
        strings = strings.toNative(),
        dataProvider = FlutterActionHandler,
    )
}