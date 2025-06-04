package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.welcome.images

import com.aiuta.fashionsdk.configuration.features.welcome.images.AiutaWelcomeScreenFeatureImages
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.images.FlutterAiutaWelcomeScreenImages
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.images.FlutterAiutaWelcomeScreenImagesCustom
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeImage
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling

fun FlutterAiutaWelcomeScreenImages.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaWelcomeScreenFeatureImages {
    return when (this) {
        is FlutterAiutaWelcomeScreenImagesCustom -> resourceScope.withResourceHandling(null) {
            object : AiutaWelcomeScreenFeatureImages {
                override val welcomeBackground = createNativeImage(this@toNative.welcomeBackgroundPath)
            }
        }
    }
}