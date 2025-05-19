package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.welcome.images

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.welcome.images.AiutaWelcomeScreenFeatureImages
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNativeImage
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.images.FlutterAiutaWelcomeScreenImages

fun FlutterAiutaWelcomeScreenImages.toNative(assetManager: AssetManager): AiutaWelcomeScreenFeatureImages {
    return object : AiutaWelcomeScreenFeatureImages {
        override val welcomeBackground = this@toNative.welcomeBackgroundPath.toNativeImage(assetManager)
    }
}