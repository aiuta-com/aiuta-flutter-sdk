package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.images

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaOnboardingBestResultsPageImages

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
class FlutterAiutaOnboardingBestResultsPageImagesCustom(
    @SerialName("onboardingBestResultsGood")
    val onboardingBestResultsGoodPaths: List<String>,

    @SerialName("onboardingBestResultsBad")
    val onboardingBestResultsBadPaths: List<String>
) : FlutterAiutaOnboardingBestResultsPageImages