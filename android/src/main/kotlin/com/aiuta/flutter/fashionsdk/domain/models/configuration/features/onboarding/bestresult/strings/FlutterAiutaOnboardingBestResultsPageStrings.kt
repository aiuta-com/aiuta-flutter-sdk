package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.strings

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaOnboardingBestResultsPageStrings(
    @SerialName("onboardingBestResultsPageTitle")
    val onboardingBestResultsPageTitle: String? = null,

    @SerialName("onboardingBestResultsTitle")
    val onboardingBestResultsTitle: String,

    @SerialName("onboardingBestResultsDescription")
    val onboardingBestResultsDescription: String
)