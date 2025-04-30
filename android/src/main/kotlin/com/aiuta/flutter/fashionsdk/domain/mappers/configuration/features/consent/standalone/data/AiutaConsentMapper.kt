package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.data

import com.aiuta.fashionsdk.configuration.features.consent.models.AiutaConsent
import com.aiuta.fashionsdk.configuration.features.consent.models.AiutaConsentType
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.data.FlutterAiutaConsent
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.data.FlutterAiutaConsentType

fun FlutterAiutaConsent.toNative(): AiutaConsent {
    return AiutaConsent(
        id = id,
        consentHtml = html,
        type = type.toNative(),
    )
}
fun FlutterAiutaConsentType.toNative(): AiutaConsentType {
    return when (this) {
        FlutterAiutaConsentType.IMPLICIT_WITHOUT_CHECKBOX -> AiutaConsentType.IMPLICIT_WITHOUT_CHECKBOX
        FlutterAiutaConsentType.IMPLICIT_WITH_CHECKBOX -> AiutaConsentType.IMPLICIT_WITH_CHECKBOX
        FlutterAiutaConsentType.EXPLICIT_REQUIRED -> AiutaConsentType.EXPLICIT_REQUIRED
        FlutterAiutaConsentType.EXPLICIT_OPTIONAL -> AiutaConsentType.EXPLICIT_OPTIONAL
    }
}