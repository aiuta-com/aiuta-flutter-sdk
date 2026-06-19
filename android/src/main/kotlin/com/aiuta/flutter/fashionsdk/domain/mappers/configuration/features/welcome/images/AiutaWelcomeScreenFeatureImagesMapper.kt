package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.welcome.images

import com.aiuta.fashionsdk.configuration.features.welcome.images.AiutaWelcomeScreenFeatureImages
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.media.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.images.FlutterAiutaWelcomeScreenImages
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.images.FlutterAiutaWelcomeScreenImagesCustom

fun FlutterAiutaWelcomeScreenImages.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaWelcomeScreenFeatureImages {
    return when (this) {
        is FlutterAiutaWelcomeScreenImagesCustom -> object : AiutaWelcomeScreenFeatureImages {
            override val welcomeBackground = this@toNative.welcomeBackground.toNative(resourceScope)
        }
    }
}
