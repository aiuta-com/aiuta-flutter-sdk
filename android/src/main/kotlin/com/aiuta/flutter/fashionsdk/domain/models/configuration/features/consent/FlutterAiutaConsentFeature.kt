package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent

import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("mode")
sealed class FlutterAiutaConsentFeature {

    companion object {
        const val TYPE_EMBEDDED_INTO_ONBOARDING = "embeddedIntoOnboarding"
        const val TYPE_STANDALONE_ONBOARDING = "standaloneOnboardingPage"
        const val TYPE_STANDALONE_IMAGE_PICKER = "standaloneImagePickerPage"
    }
}