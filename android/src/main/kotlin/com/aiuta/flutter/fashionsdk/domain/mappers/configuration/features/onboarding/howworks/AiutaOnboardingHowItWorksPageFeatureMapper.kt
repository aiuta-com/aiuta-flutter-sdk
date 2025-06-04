package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.howworks

import com.aiuta.fashionsdk.configuration.features.onboarding.howworks.AiutaOnboardingHowItWorksPageFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.howworks.images.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.howworks.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.FlutterAiutaOnboardingHowItWorksPageFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaOnboardingHowItWorksPageFeature.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaOnboardingHowItWorksPageFeature {
    return AiutaOnboardingHowItWorksPageFeature(
        images = images.toNative(resourceScope),
        strings = strings.toNative()
    )
}