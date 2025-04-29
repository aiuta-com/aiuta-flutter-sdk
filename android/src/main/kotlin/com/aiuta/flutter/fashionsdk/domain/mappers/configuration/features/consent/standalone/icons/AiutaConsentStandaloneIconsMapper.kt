package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.consent.standalone.icons.AiutaConsentStandaloneFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.icons.FlutterAiutaConsentStandaloneIcons

fun FlutterAiutaConsentStandaloneIcons.toNative(
    assetManager: AssetManager
): AiutaConsentStandaloneFeatureIcons {
    return object : AiutaConsentStandaloneFeatureIcons {
        override val consentTitle24 = this@toNative.consentTitle24?.toNative(assetManager)
    }
}