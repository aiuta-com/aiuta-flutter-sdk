package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.icons

import com.aiuta.fashionsdk.configuration.features.consent.standalone.icons.AiutaConsentStandaloneFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.icons.FlutterAiutaConsentStandaloneIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.icons.FlutterAiutaConsentStandaloneIconsCustom
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling

fun FlutterAiutaConsentStandaloneIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaConsentStandaloneFeatureIcons {
    return when (this) {
        is FlutterAiutaConsentStandaloneIconsCustom -> resourceScope.withResourceHandling(null) {
            object : AiutaConsentStandaloneFeatureIcons {
                override val consentTitle24 =
                    this@toNative.consentTitle24?.let { createNativeIcon(it) }
            }
        }
    }
}