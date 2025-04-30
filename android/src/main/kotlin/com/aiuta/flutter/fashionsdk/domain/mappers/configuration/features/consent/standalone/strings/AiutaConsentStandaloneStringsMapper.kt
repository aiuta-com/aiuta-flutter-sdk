package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.strings

import com.aiuta.fashionsdk.configuration.features.consent.standalone.strings.AiutaConsentStandaloneFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.strings.FlutterAiutaConsentStandaloneStrings

fun FlutterAiutaConsentStandaloneStrings.toNative(): AiutaConsentStandaloneFeatureStrings {
    return object : AiutaConsentStandaloneFeatureStrings {
        override val consentPageTitle = this@toNative.consentPageTitle
        override val consentTitle = this@toNative.consentTitle
        override val consentDescriptionHtml = this@toNative.consentDescriptionHtml
        override val consentFooterHtml = this@toNative.consentFooterHtml
        override val consentButtonAccept = this@toNative.consentButtonAccept
    }
}