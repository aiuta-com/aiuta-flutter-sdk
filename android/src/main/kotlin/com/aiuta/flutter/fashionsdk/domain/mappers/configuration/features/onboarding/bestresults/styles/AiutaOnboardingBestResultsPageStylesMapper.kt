package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.bestresults.styles

import com.aiuta.fashionsdk.configuration.features.onboarding.bestresult.styles.AiutaOnboardingBestResultsPageFeatureStyles
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.styles.FlutterAiutaOnboardingBestResultsPageStyles

fun FlutterAiutaOnboardingBestResultsPageStyles.toNative(): AiutaOnboardingBestResultsPageFeatureStyles {
    return object : AiutaOnboardingBestResultsPageFeatureStyles {
        override val reduceOnboardingBestResultsShadows = this@toNative.reduceOnboardingBestResultsShadows
    }
}