package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.strings

import com.aiuta.fashionsdk.configuration.features.consent.standalone.strings.AiutaConsentStandaloneFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.strings.FlutterAiutaConsentStandaloneStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.strings.FlutterAiutaConsentStandaloneStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.strings.FlutterAiutaConsentStandaloneStringsCustom

fun FlutterAiutaConsentStandaloneStrings.toNative(): AiutaConsentStandaloneFeatureStrings {
    return when (this) {
        is FlutterAiutaConsentStandaloneStringsBuiltIn -> AiutaConsentStandaloneFeatureStrings.Default()
        is FlutterAiutaConsentStandaloneStringsCustom -> object : AiutaConsentStandaloneFeatureStrings {
            override val consentPageTitle = this@toNative.consentPageTitle
            override val consentTitle = this@toNative.consentTitle
            override val consentDescriptionHtml = this@toNative.consentDescriptionHtml
            override val consentFooterHtml = this@toNative.consentFooterHtml
            override val consentButtonAccept = this@toNative.consentButtonAccept
        }
    }
}