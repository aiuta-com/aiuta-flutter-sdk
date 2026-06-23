package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.bestresults.images

import com.aiuta.fashionsdk.configuration.features.onboarding.bestresult.images.AiutaOnboardingBestResultsPageFeatureImages
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.media.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.images.FlutterAiutaOnboardingBestResultsPageImages
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.images.FlutterAiutaOnboardingBestResultsPageImagesCustom

fun FlutterAiutaOnboardingBestResultsPageImages.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaOnboardingBestResultsPageFeatureImages {
    return when (this) {
        is FlutterAiutaOnboardingBestResultsPageImagesCustom -> object : AiutaOnboardingBestResultsPageFeatureImages {
            override val onboardingBestResultsItem = this@toNative.onboardingBestResultsItem.toNative(resourceScope)
        }
    }
}
