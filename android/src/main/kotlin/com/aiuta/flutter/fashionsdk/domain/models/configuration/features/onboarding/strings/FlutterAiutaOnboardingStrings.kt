package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.strings

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaOnboardingStrings(
    @SerialName("onboardingButtonNext")
    val onboardingButtonNext: String,

    @SerialName("onboardingButtonStart")
    val onboardingButtonStart: String
)