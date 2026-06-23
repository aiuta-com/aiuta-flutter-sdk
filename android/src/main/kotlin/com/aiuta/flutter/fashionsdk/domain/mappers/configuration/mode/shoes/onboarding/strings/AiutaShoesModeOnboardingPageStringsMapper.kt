package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.shoes.onboarding.strings

import com.aiuta.fashionsdk.configuration.mode.shoes.onboarding.strings.AiutaShoesModeOnboardingPageStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.onboarding.strings.FlutterAiutaShoesModeOnboardingPageStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.onboarding.strings.FlutterAiutaShoesModeOnboardingPageStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.onboarding.strings.FlutterAiutaShoesModeOnboardingPageStringsCustom

fun FlutterAiutaShoesModeOnboardingPageStrings.toNative(): AiutaShoesModeOnboardingPageStrings {
    return when (this) {
        is FlutterAiutaShoesModeOnboardingPageStringsBuiltIn -> AiutaShoesModeOnboardingPageStrings.Default()
        is FlutterAiutaShoesModeOnboardingPageStringsCustom -> object : AiutaShoesModeOnboardingPageStrings {
            override val onboardingShoesBestResultsPageTitle = this@toNative.onboardingShoesBestResultsPageTitle
            override val onboardingShoesBestResultsTitle = this@toNative.onboardingShoesBestResultsTitle
            override val onboardingShoesBestResultsDescription = this@toNative.onboardingShoesBestResultsDescription
        }
    }
}
