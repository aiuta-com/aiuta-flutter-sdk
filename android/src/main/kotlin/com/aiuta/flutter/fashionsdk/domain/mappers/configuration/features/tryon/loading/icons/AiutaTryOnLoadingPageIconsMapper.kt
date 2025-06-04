package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.loading.icons

import com.aiuta.fashionsdk.configuration.defaults.icons.features.tryon.loading.DefaultAiutaTryOnLoadingPageFeatureIcons
import com.aiuta.fashionsdk.configuration.features.tryon.loading.icons.AiutaTryOnLoadingPageFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.icons.FlutterAiutaTryOnLoadingPageIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.icons.FlutterAiutaTryOnLoadingPageIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.icons.FlutterAiutaTryOnLoadingPageIconsCustom
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling

fun FlutterAiutaTryOnLoadingPageIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaTryOnLoadingPageFeatureIcons {
    val defaultIcons = lazy { DefaultAiutaTryOnLoadingPageFeatureIcons() }

    return when (this) {
        is FlutterAiutaTryOnLoadingPageIconsBuiltIn -> defaultIcons.value
        is FlutterAiutaTryOnLoadingPageIconsCustom -> resourceScope.withResourceHandling(defaultIcons) {
            object : AiutaTryOnLoadingPageFeatureIcons {
                override val loading14 = this@toNative.loading14?.let { createNativeIcon(it) }
            }
        }
    }
}