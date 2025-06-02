package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaOnboardingBestResultsPageStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaOnboardingBestResultsPageStringsBuiltIn : FlutterAiutaOnboardingBestResultsPageStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaOnboardingBestResultsPageStringsCustom(
    @SerialName("onboardingBestResultsPageTitle")
    val onboardingBestResultsPageTitle: String? = null,

    @SerialName("onboardingBestResultsTitle")
    val onboardingBestResultsTitle: String,

    @SerialName("onboardingBestResultsDescription")
    val onboardingBestResultsDescription: String
) : FlutterAiutaOnboardingBestResultsPageStrings