package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.icons

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaOnboardingBestResultsPageIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaOnboardingBestResultsPageIconsBuiltIn : FlutterAiutaOnboardingBestResultsPageIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaOnboardingBestResultsPageIconsCustom(
    @SerialName("onboardingBestResultsGood24")
    val onboardingBestResultsGood24: FlutterAiutaIcon,

    @SerialName("onboardingBestResultsBad24")
    val onboardingBestResultsBad24: FlutterAiutaIcon
) : FlutterAiutaOnboardingBestResultsPageIcons