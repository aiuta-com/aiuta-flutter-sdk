package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.bestresults.images

import com.aiuta.fashionsdk.configuration.features.onboarding.bestresult.images.AiutaOnboardingBestResultsPageFeatureImages
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.images.FlutterAiutaOnboardingBestResultsPageImages
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.images.FlutterAiutaOnboardingBestResultsPageImagesCustom
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeImage
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling

fun FlutterAiutaOnboardingBestResultsPageImages.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaOnboardingBestResultsPageFeatureImages {
    return when (this) {
        is FlutterAiutaOnboardingBestResultsPageImagesCustom -> resourceScope.withResourceHandling(null) {
            object : AiutaOnboardingBestResultsPageFeatureImages {
                override val onboardingBestResultsGood =
                    this@toNative.onboardingBestResultsGoodPaths.map { createNativeImage(it) }
                override val onboardingBestResultsBad =
                    this@toNative.onboardingBestResultsBadPaths.map { createNativeImage(it) }
            }
        }
    }
}