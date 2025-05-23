package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.bestresults.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.onboarding.bestresult.icons.AiutaOnboardingBestResultsPageFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.icons.FlutterAiutaOnboardingBestResultsPageIcons

fun FlutterAiutaOnboardingBestResultsPageIcons.toNative(
    assetManager: AssetManager
): AiutaOnboardingBestResultsPageFeatureIcons {
    return object : AiutaOnboardingBestResultsPageFeatureIcons {
        override val onboardingBestResultsGood24 = this@toNative.onboardingBestResultsGood24.toNative(assetManager)
        override val onboardingBestResultsBad24 = this@toNative.onboardingBestResultsBad24.toNative(assetManager)
    }
}