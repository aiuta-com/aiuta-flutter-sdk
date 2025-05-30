package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.bestresults.strings

import com.aiuta.fashionsdk.configuration.features.onboarding.bestresult.strings.AiutaOnboardingBestResultsPageFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.strings.FlutterAiutaOnboardingBestResultsPageStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.strings.FlutterAiutaOnboardingBestResultsPageStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.strings.FlutterAiutaOnboardingBestResultsPageStringsCustom

fun FlutterAiutaOnboardingBestResultsPageStrings.toNative(): AiutaOnboardingBestResultsPageFeatureStrings {
    return when (this) {
        is FlutterAiutaOnboardingBestResultsPageStringsBuiltIn -> AiutaOnboardingBestResultsPageFeatureStrings.Default()
        is FlutterAiutaOnboardingBestResultsPageStringsCustom -> object : AiutaOnboardingBestResultsPageFeatureStrings {
            override val onboardingBestResultsPageTitle = this@toNative.onboardingBestResultsPageTitle
            override val onboardingBestResultsTitle = this@toNative.onboardingBestResultsTitle
            override val onboardingBestResultsDescription = this@toNative.onboardingBestResultsDescription
        }
    }
}