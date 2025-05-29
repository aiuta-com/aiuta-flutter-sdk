package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.consent.standalone.icons.AiutaConsentStandaloneFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.icons.FlutterAiutaConsentStandaloneIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.icons.FlutterAiutaConsentStandaloneIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.icons.FlutterAiutaConsentStandaloneIconsCustom

fun FlutterAiutaConsentStandaloneIcons.toNative(
    assetManager: AssetManager
): AiutaConsentStandaloneFeatureIcons {
    return when (this) {
        is FlutterAiutaConsentStandaloneIconsBuiltIn -> error("Need support DefaultAiutaConsentStandaloneFeatureIcons")
        is FlutterAiutaConsentStandaloneIconsCustom -> object : AiutaConsentStandaloneFeatureIcons {
            override val consentTitle24 = this@toNative.consentTitle24?.toNative(assetManager)
        }
    }
}