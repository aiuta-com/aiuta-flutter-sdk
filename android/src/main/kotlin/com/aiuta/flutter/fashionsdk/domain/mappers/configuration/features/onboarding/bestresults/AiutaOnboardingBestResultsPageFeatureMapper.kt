package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.bestresults

import com.aiuta.fashionsdk.configuration.features.onboarding.bestresult.AiutaOnboardingBestResultsPageFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.bestresults.images.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.bestresults.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.FlutterAiutaOnboardingBestResultsPageFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaOnboardingBestResultsPageFeature.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaOnboardingBestResultsPageFeature {
    return AiutaOnboardingBestResultsPageFeature(
        images = images.toNative(resourceScope),
        strings = strings.toNative()
    )
}
