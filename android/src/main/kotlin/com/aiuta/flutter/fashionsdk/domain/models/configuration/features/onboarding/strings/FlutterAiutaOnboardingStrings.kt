package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaOnboardingStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaOnboardingStringsBuiltIn : FlutterAiutaOnboardingStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaOnboardingStringsCustom(
    @SerialName("onboardingButtonNext")
    val onboardingButtonNext: String,

    @SerialName("onboardingButtonStart")
    val onboardingButtonStart: String
) : FlutterAiutaOnboardingStrings