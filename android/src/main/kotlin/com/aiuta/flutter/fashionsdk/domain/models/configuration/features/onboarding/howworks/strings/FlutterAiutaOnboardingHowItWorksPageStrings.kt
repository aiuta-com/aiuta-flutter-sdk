package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaOnboardingHowItWorksPageStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaOnboardingHowItWorksPageStringsBuiltIn : FlutterAiutaOnboardingHowItWorksPageStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaOnboardingHowItWorksPageStringsCustom(
    @SerialName("onboardingHowItWorksPageTitle")
    val onboardingHowItWorksPageTitle: String? = null,

    @SerialName("onboardingHowItWorksTitle")
    val onboardingHowItWorksTitle: String,

    @SerialName("onboardingHowItWorksDescription")
    val onboardingHowItWorksDescription: String
) : FlutterAiutaOnboardingHowItWorksPageStrings