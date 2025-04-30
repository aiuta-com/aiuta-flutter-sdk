package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon

import android.content.res.AssetManager
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

fun FlutterAiutaTryOnFeature.toNative(
    assetManager: AssetManager,
): AiutaTryOnFeature {
    return AiutaTryOnFeature(
        loadingPage = loadingPage.toNative(assetManager),
        inputImageValidation = inputImageValidation.toNative(),
        cart = cart.toNative(),
        fitDisclaimer = fitDisclaimer?.toNative(assetManager),
        feedback = feedback?.toNative(assetManager),
        generationsHistory = generationsHistory?.toNative(assetManager),
        otherPhoto = otherPhoto?.toNative(assetManager),
        toggles = toggles.toNative(),
        icons = icons.toNative(assetManager),
        strings = strings.toNative(),
        styles = styles.toNative()
    )
}