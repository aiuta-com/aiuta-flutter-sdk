package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterAiutaBaseDataProvider
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.FlutterAiutaOnboardingBestResultsPageFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.FlutterAiutaOnboardingHowItWorksPageFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.shapes.FlutterAiutaOnboardingShapes
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.strings.FlutterAiutaOnboardingStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaOnboardingFeature(
    @SerialName("howItWorksPage")
    val howItWorksPage: FlutterAiutaOnboardingHowItWorksPageFeature,

    @SerialName("bestResultsPage")
    val bestResultsPage: FlutterAiutaOnboardingBestResultsPageFeature? = null,

    @SerialName("strings")
    val strings: FlutterAiutaOnboardingStrings,

    @SerialName("shapes")
    val shapes: FlutterAiutaOnboardingShapes,

    @SerialName("dataProvider")
    val dataProvider: FlutterAiutaBaseDataProvider,
)