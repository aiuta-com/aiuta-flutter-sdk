package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent

import com.aiuta.fashionsdk.configuration.features.consent.AiutaConsentFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.builtin.toNativeEmbedded
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.toNativeStandaloneOnboarding
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.toNativeStandaloneImagePicker
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.FlutterAiutaConsentEmbeddedIntoOnboardingFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.FlutterAiutaConsentFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.FlutterAiutaConsentStandaloneImagePickerPageFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.FlutterAiutaConsentStandaloneOnboardingPageFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope


fun FlutterAiutaConsentFeature.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaConsentFeature {
    return when (this) {
        is FlutterAiutaConsentEmbeddedIntoOnboardingFeature -> this.toNativeEmbedded()
        is FlutterAiutaConsentStandaloneImagePickerPageFeature -> this.toNativeStandaloneImagePicker(resourceScope)
        is FlutterAiutaConsentStandaloneOnboardingPageFeature -> this.toNativeStandaloneOnboarding(resourceScope)
    }
}