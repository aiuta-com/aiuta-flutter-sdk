package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.shapes

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaOnboardingShapes(
    @SerialName("onboardingImageL")
    val onboardingImageL: Double,

    @SerialName("onboardingImageS")
    val onboardingImageS: Double
)