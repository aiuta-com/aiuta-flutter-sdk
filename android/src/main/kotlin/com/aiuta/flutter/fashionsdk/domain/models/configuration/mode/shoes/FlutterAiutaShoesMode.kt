package com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes

import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.onboarding.FlutterAiutaShoesModeOnboardingPage
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.picker.FlutterAiutaShoesModeImagePicker
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaShoesMode(
    @SerialName("onboardingShoesPage")
    val onboardingShoesPage: FlutterAiutaShoesModeOnboardingPage,

    @SerialName("imagePicker")
    val imagePicker: FlutterAiutaShoesModeImagePicker,
)
