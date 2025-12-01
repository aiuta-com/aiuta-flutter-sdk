package com.aiuta.flutter.fashionsdk.domain.models.actions

import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed class FlutterAiutaAction {
    companion object {
        const val ACTION_ADD_TO_WISHLIST_CLICK = "addToWishlistClick"
        const val ACTION_ADD_TO_CART_CLICK = "addToCartClick"
        const val ACTION_ADD_TO_CART_OUTFIT_CLICK = "addToCartOutfit"
    }
}

@Serializable
@SerialName(FlutterAiutaAction.ACTION_ADD_TO_WISHLIST_CLICK)
class FlutterAddToWishListAction(
    @SerialName("productIds")
    val productIds: List<String>,
    @SerialName("isInWishlist")
    val isInWishlist: Boolean,
): FlutterAiutaAction()

@Serializable
@SerialName(FlutterAiutaAction.ACTION_ADD_TO_CART_CLICK)
class FlutterAddToCartAction(
    @SerialName("productId")
    val productId: String
): FlutterAiutaAction()

@Serializable
@SerialName(FlutterAiutaAction.ACTION_ADD_TO_CART_OUTFIT_CLICK)
class FlutterAddToCartOutfitAction(
    @SerialName("productId")
    val productIds: List<String>
): FlutterAiutaAction()