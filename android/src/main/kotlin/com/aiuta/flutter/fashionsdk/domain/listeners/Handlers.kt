package com.aiuta.flutter.fashionsdk.domain.listeners

import com.aiuta.flutter.fashionsdk.domain.listeners.analytic.AiutaAnalyticHandler
import com.aiuta.flutter.fashionsdk.domain.listeners.auth.AiutaJWTAuthenticationDataProvider
import com.aiuta.flutter.fashionsdk.domain.listeners.base.BaseDataProvider
import com.aiuta.flutter.fashionsdk.domain.listeners.base.BaseHandler
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.dataprovider.FlutterAiutaConsentStandaloneFeatureDataProvider
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.history.dataprovider.FlutterAiutaImagePickerUploadsHistoryFeatureDataProvider
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.dataprovider.FlutterAiutaShareFeatureDataProvider
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart.handler.FlutterAiutaTryOnCartFeatureHandler
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.dataprovider.FlutterAiutaTryOnGenerationsHistoryFeatureDataProvider
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.dataprovider.FlutterAiutaWishlistFeatureDataProvider

// TODO Is it okay to have same channel?
val flutterHandlers = listOf<BaseHandler>(
    AiutaAnalyticHandler,
    AiutaJWTAuthenticationDataProvider,
    FlutterAiutaTryOnCartFeatureHandler,
    FlutterAiutaWishlistFeatureDataProvider,
    FlutterAiutaConsentStandaloneFeatureDataProvider,
    FlutterAiutaImagePickerUploadsHistoryFeatureDataProvider,
    FlutterAiutaTryOnGenerationsHistoryFeatureDataProvider,
    FlutterAiutaShareFeatureDataProvider,
)

val flutterDataProvider: List<BaseDataProvider> = flutterHandlers
    .mapNotNull{ handler -> handler as? BaseDataProvider }