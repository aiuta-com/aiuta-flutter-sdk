package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.strings

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaOnboardingHowItWorksPageStrings(
    @SerialName("onboardingHowItWorksPageTitle")
    val onboardingHowItWorksPageTitle: String? = null,

    @SerialName("onboardingHowItWorksTitle")
    val onboardingHowItWorksTitle: String,

    @SerialName("onboardingHowItWorksDescription")
    val onboardingHowItWorksDescription: String
)