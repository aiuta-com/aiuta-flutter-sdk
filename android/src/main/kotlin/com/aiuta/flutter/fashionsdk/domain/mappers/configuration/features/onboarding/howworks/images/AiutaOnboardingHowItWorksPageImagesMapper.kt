package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.howworks.images

import com.aiuta.fashionsdk.configuration.defaults.images.features.onboarding.tryon.DefaultAiutaOnboardingHowItWorksPageFeatureImages
import com.aiuta.fashionsdk.configuration.features.onboarding.howworks.images.AiutaOnboardingHowItWorksPageFeatureImages
import com.aiuta.fashionsdk.configuration.features.onboarding.howworks.images.AiutaOnboardingHowItWorksPageFeatureImages.OnboardingHowItWorksItem
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.images.FlutterAiutaOnboardingHowItWorksPageImages
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.images.FlutterAiutaOnboardingHowItWorksPageImagesBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.images.FlutterAiutaOnboardingHowItWorksPageImagesCustom
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.images.FlutterAiutaOnboardingHowItWorksPageImagesCustom.FlutterOnboardingHowItWorksItem
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperHandlerScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeImage
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling

fun FlutterAiutaOnboardingHowItWorksPageImages.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaOnboardingHowItWorksPageFeatureImages {
    val defaultImages = lazy { DefaultAiutaOnboardingHowItWorksPageFeatureImages() }

    return when (this) {
        is FlutterAiutaOnboardingHowItWorksPageImagesBuiltIn -> defaultImages.value
        is FlutterAiutaOnboardingHowItWorksPageImagesCustom -> resourceScope.withResourceHandling(
            default = defaultImages,
        ) {
            object : AiutaOnboardingHowItWorksPageFeatureImages {
                override val onboardingHowItWorksItems =
                    this@toNative.onboardingHowItWorksItems.map {
                        it.toNative(handlerScope)
                    }
            }
        }
    }
}


fun FlutterOnboardingHowItWorksItem.toNative(
    handlerScope: AiutaResourceMapperHandlerScope,
): OnboardingHowItWorksItem {
    return OnboardingHowItWorksItem(
        itemPhoto = handlerScope.createNativeImage(
            resourcePath = itemPhotoPath,
        ),
        itemPreview = handlerScope.createNativeImage(
            resourcePath = itemPreviewPath,
        )
    )
}