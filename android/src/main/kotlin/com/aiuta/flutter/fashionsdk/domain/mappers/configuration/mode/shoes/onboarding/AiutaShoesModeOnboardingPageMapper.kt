package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.shoes.onboarding

import com.aiuta.fashionsdk.configuration.mode.shoes.onboarding.AiutaShoesModeOnboardingPage
import com.aiuta.fashionsdk.configuration.mode.shoes.onboarding.images.AiutaShoesModeOnboardingPageImages
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.media.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.shoes.onboarding.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.onboarding.FlutterAiutaShoesModeOnboardingPage

fun FlutterAiutaShoesModeOnboardingPage.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaShoesModeOnboardingPage {
    val nativeMedia = images.toNative(resourceScope)
    return AiutaShoesModeOnboardingPage(
        images = object : AiutaShoesModeOnboardingPageImages {
            override val onboardingShoesBestResultsItem = nativeMedia
        },
        strings = strings.toNative(),
    )
}
