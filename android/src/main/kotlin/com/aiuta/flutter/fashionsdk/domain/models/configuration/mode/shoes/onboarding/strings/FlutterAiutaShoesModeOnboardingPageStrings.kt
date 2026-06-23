package com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.onboarding.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaShoesModeOnboardingPageStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaShoesModeOnboardingPageStringsBuiltIn :
    FlutterAiutaShoesModeOnboardingPageStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaShoesModeOnboardingPageStringsCustom(
    @SerialName("onboardingShoesBestResultsPageTitle")
    val onboardingShoesBestResultsPageTitle: String? = null,

    @SerialName("onboardingShoesBestResultsTitle")
    val onboardingShoesBestResultsTitle: String,

    @SerialName("onboardingShoesBestResultsDescription")
    val onboardingShoesBestResultsDescription: String,
) : FlutterAiutaShoesModeOnboardingPageStrings
