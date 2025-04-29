package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart.handler

import com.aiuta.fashionsdk.configuration.features.tryon.cart.handler.AiutaTryOnCartFeatureHandler
import com.aiuta.flutter.fashionsdk.domain.listeners.base.BaseHandler
import com.aiuta.flutter.fashionsdk.domain.models.actions.PlatformAddToCartAction
import com.aiuta.flutter.fashionsdk.domain.models.actions.PlatformAiutaAction
import kotlinx.serialization.json.Json

object FlutterAiutaTryOnCartFeatureHandler: BaseHandler(), AiutaTryOnCartFeatureHandler {
    override val handlerKeyChannel: String = "aiutaActionsHandler"

    override fun addToCart(productId: String) {
        val action = PlatformAddToCartAction(
            productId = productId
        )

        sendEvent(Json.encodeToString<PlatformAiutaAction>(action))
    }
}