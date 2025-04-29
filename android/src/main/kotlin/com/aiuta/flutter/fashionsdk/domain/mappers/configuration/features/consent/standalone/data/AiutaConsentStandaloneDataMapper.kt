package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.data

import com.aiuta.fashionsdk.configuration.features.consent.standalone.data.AiutaConsentStandaloneFeatureData
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.data.FlutterAiutaConsentStandaloneData

fun FlutterAiutaConsentStandaloneData.toNative(): AiutaConsentStandaloneFeatureData {
    return object : AiutaConsentStandaloneFeatureData {
        override val consents = this@toNative.consents.map { it.toNative() }
    }
}
