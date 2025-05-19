package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.icons.FlutterAiutaOnboardingBestResultsPageIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.images.FlutterAiutaOnboardingBestResultsPageImages
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.strings.FlutterAiutaOnboardingBestResultsPageStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.styles.FlutterAiutaOnboardingBestResultsPageStyles
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaOnboardingBestResultsPageFeature(
    @SerialName("images")
    val images: FlutterAiutaOnboardingBestResultsPageImages,

    @SerialName("icons")
    val icons: FlutterAiutaOnboardingBestResultsPageIcons,

    @SerialName("strings")
    val strings: FlutterAiutaOnboardingBestResultsPageStrings,

    @SerialName("styles")
    val styles: FlutterAiutaOnboardingBestResultsPageStyles
)