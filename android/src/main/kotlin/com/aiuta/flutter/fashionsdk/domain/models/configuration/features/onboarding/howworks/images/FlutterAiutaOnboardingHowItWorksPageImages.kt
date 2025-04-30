package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.images

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaOnboardingHowItWorksPageImages(
    @SerialName("onboardingHowItWorksItems")
    val onboardingHowItWorksItems: List<FlutterOnboardingHowItWorksItem>
) {
    @Serializable
    data class FlutterOnboardingHowItWorksItem(
        @SerialName("itemPhoto")
        val itemPhotoPath: String,

        @SerialName("itemPreview")
        val itemPreviewPath: String
    )
}