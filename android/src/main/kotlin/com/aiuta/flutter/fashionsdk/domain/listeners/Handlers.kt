package com.aiuta.flutter.fashionsdk.domain.listeners

import com.aiuta.flutter.fashionsdk.domain.listeners.actions.FlutterActionHandler
import com.aiuta.flutter.fashionsdk.domain.listeners.analytic.AiutaAnalyticHandler
import com.aiuta.flutter.fashionsdk.domain.listeners.auth.AiutaJWTAuthenticationDataProvider
import com.aiuta.flutter.fashionsdk.domain.listeners.base.BaseDataProvider
import com.aiuta.flutter.fashionsdk.domain.listeners.base.BaseHandler
import com.aiuta.flutter.fashionsdk.domain.listeners.actions.FlutterDataActionHandler

val flutterHandlers = listOf<BaseHandler>(
    AiutaAnalyticHandler,
    AiutaJWTAuthenticationDataProvider,
    FlutterActionHandler,
    FlutterDataActionHandler,
)

val flutterDataProvider: List<BaseDataProvider> = flutterHandlers
    .mapNotNull{ handler -> handler as? BaseDataProvider }