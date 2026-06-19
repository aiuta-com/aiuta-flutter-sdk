package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterAiutaBaseDataProvider
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.FlutterAiutaOnboardingBestResultsPageFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.FlutterAiutaOnboardingHowItWorksPageFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.strings.FlutterAiutaOnboardingStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaOnboardingFeature(
    @SerialName("howItWorksPage")
    val howItWorksPage: FlutterAiutaOnboardingHowItWorksPageFeature? = null,

    @SerialName("bestResultsPage")
    val bestResultsPage: FlutterAiutaOnboardingBestResultsPageFeature? = null,

    @SerialName("strings")
    val strings: FlutterAiutaOnboardingStrings,

    @SerialName("dataProvider")
    val dataProvider: FlutterAiutaBaseDataProvider,
)