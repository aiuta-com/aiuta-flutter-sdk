package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.strings

import com.aiuta.fashionsdk.configuration.features.onboarding.strings.AiutaOnboardingFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.strings.FlutterAiutaOnboardingStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.strings.FlutterAiutaOnboardingStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.strings.FlutterAiutaOnboardingStringsCustom

fun FlutterAiutaOnboardingStrings.toNative(): AiutaOnboardingFeatureStrings {
    return when (this) {
        is FlutterAiutaOnboardingStringsBuiltIn -> AiutaOnboardingFeatureStrings.Default()
        is FlutterAiutaOnboardingStringsCustom -> object : AiutaOnboardingFeatureStrings {
            override val onboardingButtonNext = this@toNative.onboardingButtonNext
            override val onboardingButtonStart = this@toNative.onboardingButtonStart
        }
    }
}