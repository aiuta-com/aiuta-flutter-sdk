package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.howworks.images

import com.aiuta.fashionsdk.configuration.defaults.images.features.onboarding.tryon.DefaultAiutaOnboardingHowItWorksPageFeatureImages
import com.aiuta.fashionsdk.configuration.features.onboarding.howworks.images.AiutaOnboardingHowItWorksPageFeatureImages
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.media.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.images.FlutterAiutaOnboardingHowItWorksPageImages
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.images.FlutterAiutaOnboardingHowItWorksPageImagesBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.images.FlutterAiutaOnboardingHowItWorksPageImagesCustom

fun FlutterAiutaOnboardingHowItWorksPageImages.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaOnboardingHowItWorksPageFeatureImages {
    val defaultImages = lazy { DefaultAiutaOnboardingHowItWorksPageFeatureImages() }

    return when (this) {
        is FlutterAiutaOnboardingHowItWorksPageImagesBuiltIn -> defaultImages.value
        is FlutterAiutaOnboardingHowItWorksPageImagesCustom -> object : AiutaOnboardingHowItWorksPageFeatureImages {
            override val onboardingHowItWorksItem = this@toNative.onboardingHowItWorksItem.toNative(resourceScope)
        }
    }
}
