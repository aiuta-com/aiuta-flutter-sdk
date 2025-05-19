package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.images.FlutterAiutaOnboardingHowItWorksPageImages
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.strings.FlutterAiutaOnboardingHowItWorksPageStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaOnboardingHowItWorksPageFeature(
    @SerialName("images")
    val images: FlutterAiutaOnboardingHowItWorksPageImages,

    @SerialName("strings")
    val strings: FlutterAiutaOnboardingHowItWorksPageStrings
)