package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.welcome.icons

import com.aiuta.fashionsdk.configuration.features.welcome.icons.AiutaWelcomeScreenFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.icons.FlutterAiutaWelcomeScreenIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.icons.FlutterAiutaWelcomeScreenIconsCustom
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling

fun FlutterAiutaWelcomeScreenIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaWelcomeScreenFeatureIcons {
    return when (this) {
        is FlutterAiutaWelcomeScreenIconsCustom -> resourceScope.withResourceHandling(null) {
            object : AiutaWelcomeScreenFeatureIcons {
                override val welcome82 = createNativeIcon(this@toNative.welcome82)
            }
        }
    }
}