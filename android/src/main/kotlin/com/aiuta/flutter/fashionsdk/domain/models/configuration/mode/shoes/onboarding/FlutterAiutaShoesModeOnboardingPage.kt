package com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.onboarding

import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.media.FlutterAiutaMedia
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.onboarding.strings.FlutterAiutaShoesModeOnboardingPageStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaShoesModeOnboardingPage(
    @SerialName("images")
    val images: FlutterAiutaMedia,

    @SerialName("strings")
    val strings: FlutterAiutaShoesModeOnboardingPageStrings,
)
