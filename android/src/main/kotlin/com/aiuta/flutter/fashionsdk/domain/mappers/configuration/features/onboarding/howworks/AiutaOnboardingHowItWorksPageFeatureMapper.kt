package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.howworks

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.onboarding.howworks.AiutaOnboardingHowItWorksPageFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.howworks.images.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.howworks.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.FlutterAiutaOnboardingHowItWorksPageFeature

fun FlutterAiutaOnboardingHowItWorksPageFeature.toNative(
    assetManager: AssetManager,
): AiutaOnboardingHowItWorksPageFeature {
    return AiutaOnboardingHowItWorksPageFeature(
        images = images.toNative(assetManager),
        strings = strings.toNative()
    )
}