package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon

import com.aiuta.fashionsdk.configuration.features.tryon.AiutaTryOnFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.loading.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.validation.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.cart.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.disclaimer.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.feedback.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.history.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.other.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.toggles.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.styles.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.FlutterAiutaTryOnFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaTryOnFeature.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaTryOnFeature {
    return AiutaTryOnFeature(
        loadingPage = loadingPage.toNative(resourceScope),
        inputImageValidation = inputImageValidation.toNative(),
        cart = cart.toNative(),
        fitDisclaimer = fitDisclaimer?.toNative(resourceScope),
        feedback = feedback?.toNative(resourceScope),
        generationsHistory = generationsHistory?.toNative(resourceScope),
        otherPhoto = otherPhoto?.toNative(resourceScope),
        toggles = toggles.toNative(),
        icons = icons.toNative(resourceScope),
        strings = strings.toNative(),
        styles = styles.toNative()
    )
}