package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.styles

import com.aiuta.fashionsdk.configuration.features.consent.standalone.styles.AiutaConsentStandaloneFeatureStyles
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.styles.FlutterAiutaConsentStandaloneStyles

fun FlutterAiutaConsentStandaloneStyles.toNative(): AiutaConsentStandaloneFeatureStyles {
    return object : AiutaConsentStandaloneFeatureStyles {
        override val drawBordersAroundConsents = this@toNative.drawBordersAroundConsents
    }
}