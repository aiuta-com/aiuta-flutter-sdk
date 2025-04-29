package com.aiuta.flutter.fashionsdk.domain.models.actions

import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface PlatformAiutaAction {
    companion object {
        const val ACTION_ADD_TO_WISHLIST_CLICK = "addToWishlistClick"
        const val ACTION_ADD_TO_CART_CLICK = "addToCartClick"
    }
}

@Serializable
@SerialName(PlatformAiutaAction.ACTION_ADD_TO_WISHLIST_CLICK)
class PlatformAddToWishListAction(
    @SerialName("productId")
    val productId: String,
    @SerialName("isInWishlist")
    val isInWishlist: Boolean,
): PlatformAiutaAction

@Serializable
@SerialName(PlatformAiutaAction.ACTION_ADD_TO_CART_CLICK)
class PlatformAddToCartAction(
    @SerialName("productId")
    val productId: String
): PlatformAiutaAction