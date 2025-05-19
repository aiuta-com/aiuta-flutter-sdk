package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.consent.standalone.dataprovider.AiutaConsentStandaloneFeatureDataProviderBuiltIn
import com.aiuta.fashionsdk.configuration.features.onboarding.AiutaOnboardingFeature
import com.aiuta.fashionsdk.configuration.features.onboarding.dataprovider.AiutaOnboardingFeatureDataProviderBuiltIn
import com.aiuta.flutter.fashionsdk.domain.listeners.actions.FlutterDataActionHandler
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.howworks.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.bestresults.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.shapes.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterAiutaBaseDataProviderBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterAiutaBaseDataProviderCustom
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.FlutterAiutaOnboardingFeature

fun FlutterAiutaOnboardingFeature.toNative(
    assetManager: AssetManager,
): AiutaOnboardingFeature {
    return AiutaOnboardingFeature(
        howItWorksPage = howItWorksPage.toNative(assetManager),
        bestResultsPage = bestResultsPage?.toNative(assetManager),
        strings = strings.toNative(),
        shapes = shapes.toNative(),
        dataProvider = when (dataProvider) {
            FlutterAiutaBaseDataProviderBuiltIn -> AiutaOnboardingFeatureDataProviderBuiltIn
            FlutterAiutaBaseDataProviderCustom -> FlutterDataActionHandler
        }
    )
}