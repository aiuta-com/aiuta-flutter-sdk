package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.dataprovider

import com.aiuta.fashionsdk.configuration.features.wishlist.dataprovider.AiutaWishlistFeatureDataProvider
import com.aiuta.flutter.fashionsdk.domain.listeners.base.BaseDataProvider
import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey
import com.aiuta.flutter.fashionsdk.domain.models.actions.PlatformAddToWishListAction
import com.aiuta.flutter.fashionsdk.domain.models.actions.PlatformAiutaAction
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.dataprovider.WishlistDataActionKey.UpdateWishlist
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.serialization.json.Json

object FlutterAiutaWishlistFeatureDataProvider :
    BaseDataProvider(),
    AiutaWishlistFeatureDataProvider {

    override val handlerKeyChannel: String = "aiutaActionsHandler"
    override val dataActionKeys: List<WishlistDataActionKey> by lazy {
        listOf(UpdateWishlist())
    }

    private val _wishlistProductsIds: MutableStateFlow<List<String>> = MutableStateFlow(emptyList())
    override val wishlistProductsIds: StateFlow<List<String>> = _wishlistProductsIds

    override fun setProductInWishlist(productId: String, inWishlist: Boolean) {
        val action = PlatformAddToWishListAction(
            productId = productId,
            isInWishlist = inWishlist,
        )

        sendEvent(Json.encodeToString<PlatformAiutaAction>(action))
    }


    override fun MethodCall.handleDataOfData(dataActionKey: FlutterDataActionKey) {
        if (dataActionKey !is WishlistDataActionKey) return

        when (dataActionKey) {
            is UpdateWishlist -> {
                val rawIds = argument<List<String>>(dataActionKey.PARAMS_WISHLIST_IDS)
                rawIds?.let {
                    _wishlistProductsIds.value = rawIds
                }
            }
        }
    }
}