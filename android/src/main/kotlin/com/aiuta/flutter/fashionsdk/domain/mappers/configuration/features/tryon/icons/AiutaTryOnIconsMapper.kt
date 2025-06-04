package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.icons

import com.aiuta.fashionsdk.configuration.defaults.icons.features.tryon.DefaultAiutaTryOnFeatureIcons
import com.aiuta.fashionsdk.configuration.features.tryon.icons.AiutaTryOnFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.icons.FlutterAiutaTryOnIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.icons.FlutterAiutaTryOnIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.icons.FlutterAiutaTryOnIconsCustom
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling

fun FlutterAiutaTryOnIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaTryOnFeatureIcons {
    val defaultIcons = lazy { DefaultAiutaTryOnFeatureIcons() }

    return when (this) {
        is FlutterAiutaTryOnIconsBuiltIn -> defaultIcons.value
        is FlutterAiutaTryOnIconsCustom -> resourceScope.withResourceHandling(defaultIcons) {
            object : AiutaTryOnFeatureIcons {
                override val tryOn20 = createNativeIcon(this@toNative.tryOn20)
            }
        }
    }
}