package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.images

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaOnboardingBestResultsPageImages(
    @SerialName("onboardingBestResultsGood")
    val onboardingBestResultsGoodPaths: List<String>,

    @SerialName("onboardingBestResultsBad")
    val onboardingBestResultsBadPaths: List<String>
)