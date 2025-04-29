package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.bestresults

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.onboarding.bestresult.AiutaOnboardingBestResultsPageFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.bestresults.images.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.bestresults.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.bestresults.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.bestresults.styles.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.FlutterAiutaOnboardingBestResultsPageFeature

fun FlutterAiutaOnboardingBestResultsPageFeature.toNative(assetManager: AssetManager): AiutaOnboardingBestResultsPageFeature {
    return AiutaOnboardingBestResultsPageFeature(
        images = images.toNative(assetManager),
        icons = icons.toNative(assetManager),
        strings = strings.toNative(),
        styles = styles.toNative()
    )
}