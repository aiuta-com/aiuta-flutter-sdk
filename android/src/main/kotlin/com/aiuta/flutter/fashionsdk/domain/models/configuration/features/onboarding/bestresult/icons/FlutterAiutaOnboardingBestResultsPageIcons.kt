package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.icons

import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaOnboardingBestResultsPageIcons(
    @SerialName("onboardingBestResultsGood24")
    val onboardingBestResultsGood24: FlutterAiutaIcon,

    @SerialName("onboardingBestResultsBad24")
    val onboardingBestResultsBad24: FlutterAiutaIcon
)