package com.aiuta.flutter.fashionsdk.domain.listeners.analytic

import com.aiuta.fashionsdk.analytics.events.AiutaAnalyticsEvent
import com.aiuta.flutter.fashionsdk.domain.listeners.base.BaseHandler

object AiutaAnalyticHandler : BaseHandler() {
    override val handlerKeyChannel: String = "aiutaAnalyticsHandler"

    fun sendAnalytic(event: AiutaAnalyticsEvent) {
        sendEvent(event.serialize())
    }
}