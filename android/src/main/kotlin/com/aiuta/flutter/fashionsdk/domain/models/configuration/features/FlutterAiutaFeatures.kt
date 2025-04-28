package com.aiuta.flutter.fashionsdk.domain.models.configuration.features

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaFeatures(
    @SerialName("welcomeScreen")
    val welcomeScreen: FlutterAiutaWelcomeScreenFeature? = null,

    @SerialName("onboarding")
    val onboarding: FlutterAiutaOnboardingFeature? = null,

    @SerialName("consent")
    val consent: FlutterAiutaConsentFeature? = null,

    @SerialName("imagePicker")
    val imagePicker: FlutterAiutaImagePickerFeature,

    @SerialName("tryOn")
    val tryOn: FlutterAiutaTryOnFeature,

    @SerialName("share")
    val share: FlutterAiutaShareFeature? = null,

    @SerialName("wishlist")
    val wishlist: FlutterAiutaWishlistFeature? = null
)