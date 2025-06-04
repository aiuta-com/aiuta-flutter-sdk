package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.history.icons

import com.aiuta.fashionsdk.configuration.defaults.icons.features.tryon.history.DefaultAiutaTryOnGenerationsHistoryFeatureIcons
import com.aiuta.fashionsdk.configuration.features.tryon.history.icons.AiutaTryOnGenerationsHistoryFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.icons.FlutterAiutaTryOnGenerationsHistoryIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.icons.FlutterAiutaTryOnGenerationsHistoryIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.icons.FlutterAiutaTryOnGenerationsHistoryIconsCustom
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling

fun FlutterAiutaTryOnGenerationsHistoryIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaTryOnGenerationsHistoryFeatureIcons {
    val defaultIcons = lazy { DefaultAiutaTryOnGenerationsHistoryFeatureIcons() }

    return when (this) {
        is FlutterAiutaTryOnGenerationsHistoryIconsBuiltIn -> defaultIcons.value
        is FlutterAiutaTryOnGenerationsHistoryIconsCustom -> resourceScope.withResourceHandling(
            defaultIcons
        ) {
            object : AiutaTryOnGenerationsHistoryFeatureIcons {
                override val history24 = createNativeIcon(this@toNative.history24)
            }
        }
    }
}