package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.dataprovider

import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey

sealed interface WishlistDataActionKey : FlutterDataActionKey {
    class UpdateWishlist: WishlistDataActionKey {
        override val key: String = "updateWishlistProductsIds"
        val PARAMS_WISHLIST_IDS = "wishlistProductsIds"
    }
}