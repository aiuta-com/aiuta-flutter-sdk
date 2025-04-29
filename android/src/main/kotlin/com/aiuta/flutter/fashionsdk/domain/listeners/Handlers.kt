package com.aiuta.flutter.fashionsdk.domain.listeners

import com.aiuta.flutter.fashionsdk.domain.listeners.analytic.AiutaAnalyticHandler
import com.aiuta.flutter.fashionsdk.domain.listeners.auth.AiutaJWTAuthenticationDataProvider
import com.aiuta.flutter.fashionsdk.domain.listeners.base.BaseHandler
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart.handler.FlutterAiutaTryOnCartFeatureHandler
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.dataprovider.FlutterAiutaWishlistFeatureDataProvider

val flutterHandlers = listOf<BaseHandler>(
    AiutaAnalyticHandler,
    AiutaJWTAuthenticationDataProvider,
    FlutterAiutaTryOnCartFeatureHandler,
    FlutterAiutaWishlistFeatureDataProvider,
)