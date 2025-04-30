package com.aiuta.flutter.fashionsdk.domain.listeners.analytic

import com.aiuta.fashionsdk.internal.analytic.model.ExternalAnalyticEvent
import com.aiuta.flutter.fashionsdk.domain.listeners.base.BaseHandler

object AiutaAnalyticHandler : BaseHandler() {
    override val handlerKeyChannel: String = "aiutaAnalyticsHandler"

    fun sendAnalytic(event: ExternalAnalyticEvent) {
        sendEvent(event.serialize())
    }
}