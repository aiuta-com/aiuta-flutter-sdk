package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.howworks.images

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.defaults.images.features.onboarding.tryon.DefaultAiutaOnboardingHowItWorksPageFeatureImages
import com.aiuta.fashionsdk.configuration.features.onboarding.howworks.images.AiutaOnboardingHowItWorksPageFeatureImages
import com.aiuta.fashionsdk.configuration.features.onboarding.howworks.images.AiutaOnboardingHowItWorksPageFeatureImages.OnboardingHowItWorksItem
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNativeImage
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.images.FlutterAiutaOnboardingHowItWorksPageImages
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.images.FlutterAiutaOnboardingHowItWorksPageImagesBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.images.FlutterAiutaOnboardingHowItWorksPageImagesCustom
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.images.FlutterAiutaOnboardingHowItWorksPageImagesCustom.FlutterOnboardingHowItWorksItem

fun FlutterAiutaOnboardingHowItWorksPageImages.toNative(
    assetManager: AssetManager
): AiutaOnboardingHowItWorksPageFeatureImages {
    return when (this) {
        is FlutterAiutaOnboardingHowItWorksPageImagesBuiltIn -> DefaultAiutaOnboardingHowItWorksPageFeatureImages()
        is FlutterAiutaOnboardingHowItWorksPageImagesCustom -> object : AiutaOnboardingHowItWorksPageFeatureImages {
            override val onboardingHowItWorksItems = this@toNative.onboardingHowItWorksItems.map {
                it.toNative(assetManager)
            }
        }
    }
}

fun FlutterOnboardingHowItWorksItem.toNative(
    assetManager: AssetManager
): OnboardingHowItWorksItem {
    return OnboardingHowItWorksItem(
        itemPhoto = itemPhotoPath.toNativeImage(assetManager),
        itemPreview = itemPreviewPath.toNativeImage(assetManager),
    )
}