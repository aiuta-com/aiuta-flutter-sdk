package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.bestresults.images

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.onboarding.bestresult.images.AiutaOnboardingBestResultsPageFeatureImages
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNativeImage
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.images.FlutterAiutaOnboardingBestResultsPageImages

fun FlutterAiutaOnboardingBestResultsPageImages.toNative(
    assetManager: AssetManager
): AiutaOnboardingBestResultsPageFeatureImages {
    return object : AiutaOnboardingBestResultsPageFeatureImages {
        override val onboardingBestResultsGood = this@toNative.onboardingBestResultsGoodPaths.map { it.toNativeImage(assetManager) }
        override val onboardingBestResultsBad = this@toNative.onboardingBestResultsBadPaths.map { it.toNativeImage(assetManager) }
    }
}