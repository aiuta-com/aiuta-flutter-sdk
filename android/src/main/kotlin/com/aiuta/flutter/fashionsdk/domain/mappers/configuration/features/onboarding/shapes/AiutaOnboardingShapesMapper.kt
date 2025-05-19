package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.shapes

import androidx.compose.ui.unit.dp
import com.aiuta.fashionsdk.configuration.features.onboarding.shapes.AiutaOnboardingFeatureShapes
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.shapes.FlutterAiutaOnboardingShapes

fun FlutterAiutaOnboardingShapes.toNative(): AiutaOnboardingFeatureShapes {
    return object : AiutaOnboardingFeatureShapes() {
        override val onboardingImageL = this@toNative.onboardingImageL.dp
        override val onboardingImageS = this@toNative.onboardingImageS.dp
    }
}