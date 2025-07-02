package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.loading

import com.aiuta.fashionsdk.configuration.features.tryon.loading.AiutaTryOnLoadingPageFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.FlutterAiutaTryOnLoadingPageFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.loading.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.loading.styles.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaTryOnLoadingPageFeature.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaTryOnLoadingPageFeature {
    return AiutaTryOnLoadingPageFeature(
        strings = strings.toNative(),
        styles = styles.toNative()
    )
}