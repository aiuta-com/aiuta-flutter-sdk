package com.aiuta.flutter.fashionsdk.domain.listeners.actions

import com.aiuta.fashionsdk.configuration.features.tryon.cart.handler.AiutaTryOnCartFeatureHandler
import com.aiuta.fashionsdk.configuration.features.wishlist.dataprovider.AiutaWishlistFeatureDataProvider
import com.aiuta.flutter.fashionsdk.domain.listeners.base.BaseDataProvider
import com.aiuta.flutter.fashionsdk.domain.listeners.base.BaseHandler
import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterAddToCartAction
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterAddToWishListAction
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterAiutaAction
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.dataprovider.WishlistDataActionKey
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.dataprovider.WishlistDataActionKey.UpdateWishlist
import com.aiuta.flutter.fashionsdk.utils.json
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.serialization.json.Json

object FlutterActionHandler:
    BaseDataProvider(),
    AiutaTryOnCartFeatureHandler,
    AiutaWishlistFeatureDataProvider{

    override val handlerKeyChannel: String = "aiutaActionsHandler"
    override val dataActionKeys: List<WishlistDataActionKey> by lazy {
        listOf(UpdateWishlist())
    }

    private val _wishlistProductsIds: MutableStateFlow<List<String>> = MutableStateFlow(emptyList())
    override val wishlistProductsIds: StateFlow<List<String>> = _wishlistProductsIds

    override fun addToCart(productId: String) {
        val action = FlutterAddToCartAction(
            productId = productId
        )

        sendEvent(Json.encodeToString<FlutterAiutaAction>(action))
    }

    override fun setProductInWishlist(productId: String, inWishlist: Boolean) {
        val action = FlutterAddToWishListAction(
            productId = productId,
            isInWishlist = inWishlist,
        )

        sendEvent(Json.encodeToString<FlutterAiutaAction>(action))
    }

    override fun handleDataActionKey(call: MethodCall, dataActionKey: FlutterDataActionKey) {
        if (dataActionKey !is WishlistDataActionKey) return

        when (dataActionKey) {
            is UpdateWishlist -> {
                val rawProductIds = call.argument<String>(dataActionKey.PARAMS_WISHLIST_IDS)
                rawProductIds?.let {
                    val productIds = json.decodeFromString<List<String>>(rawProductIds)
                    _wishlistProductsIds.value = productIds
                }
            }
        }
    }
}