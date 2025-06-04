package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.disclaimer.icons

import com.aiuta.fashionsdk.configuration.features.tryon.disclaimer.icons.AiutaTryOnFitDisclaimerFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.icons.FlutterAiutaTryOnFitDisclaimerIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.icons.FlutterAiutaTryOnFitDisclaimerIconsCustom
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling

fun FlutterAiutaTryOnFitDisclaimerIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaTryOnFitDisclaimerFeatureIcons {
    return when (this) {
        is FlutterAiutaTryOnFitDisclaimerIconsCustom -> resourceScope.withResourceHandling(null) {
            object : AiutaTryOnFitDisclaimerFeatureIcons {
                override val info20 = this@toNative.info20?.let { createNativeIcon(it) }
            }
        }
    }
}