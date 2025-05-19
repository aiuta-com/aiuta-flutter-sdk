package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.styles

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaOnboardingBestResultsPageStyles(
    @SerialName("reduceOnboardingBestResultsShadows")
    val reduceOnboardingBestResultsShadows: Boolean
)