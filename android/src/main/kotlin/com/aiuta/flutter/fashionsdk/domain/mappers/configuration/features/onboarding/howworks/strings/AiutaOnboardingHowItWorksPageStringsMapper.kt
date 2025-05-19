package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.howworks.strings

import com.aiuta.fashionsdk.configuration.features.onboarding.howworks.strings.AiutaOnboardingHowItWorksPageFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.strings.FlutterAiutaOnboardingHowItWorksPageStrings

fun FlutterAiutaOnboardingHowItWorksPageStrings.toNative(): AiutaOnboardingHowItWorksPageFeatureStrings {
    return object : AiutaOnboardingHowItWorksPageFeatureStrings {
        override val onboardingHowItWorksPageTitle = this@toNative.onboardingHowItWorksPageTitle
        override val onboardingHowItWorksTitle = this@toNative.onboardingHowItWorksTitle
        override val onboardingHowItWorksDescription = this@toNative.onboardingHowItWorksDescription
    }
}