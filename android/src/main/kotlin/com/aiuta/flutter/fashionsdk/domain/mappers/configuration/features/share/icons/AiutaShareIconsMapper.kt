package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.share.icons

import com.aiuta.fashionsdk.configuration.defaults.icons.features.share.DefaultAiutaShareFeatureIcons
import com.aiuta.fashionsdk.configuration.features.share.icons.AiutaShareFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.icons.FlutterAiutaShareIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.icons.FlutterAiutaShareIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.icons.FlutterAiutaShareIconsCustom
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling

fun FlutterAiutaShareIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaShareFeatureIcons {
    val defaultIcons = lazy { DefaultAiutaShareFeatureIcons() }

    return when (this) {
        is FlutterAiutaShareIconsBuiltIn -> defaultIcons.value
        is FlutterAiutaShareIconsCustom -> resourceScope.withResourceHandling(defaultIcons) {
            object : AiutaShareFeatureIcons {
                override val share24 = createNativeIcon(this@toNative.share24)
            }
        }
    }
}