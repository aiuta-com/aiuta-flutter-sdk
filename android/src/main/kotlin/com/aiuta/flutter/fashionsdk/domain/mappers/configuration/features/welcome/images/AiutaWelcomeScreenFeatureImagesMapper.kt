package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.welcome.images

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.welcome.images.AiutaWelcomeScreenFeatureImages
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNativeImage
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.images.FlutterAiutaWelcomeScreenImages
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.images.FlutterAiutaWelcomeScreenImagesCustom

fun FlutterAiutaWelcomeScreenImages.toNative(
    assetManager: AssetManager
): AiutaWelcomeScreenFeatureImages {
    return when (this) {
        is FlutterAiutaWelcomeScreenImagesCustom -> object : AiutaWelcomeScreenFeatureImages {
            override val welcomeBackground = this@toNative.welcomeBackgroundPath.toNativeImage(assetManager)
        }
    }
}