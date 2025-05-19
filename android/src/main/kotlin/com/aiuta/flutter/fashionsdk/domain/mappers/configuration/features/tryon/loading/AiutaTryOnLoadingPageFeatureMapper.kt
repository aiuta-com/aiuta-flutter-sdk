package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.loading

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.tryon.loading.AiutaTryOnLoadingPageFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.FlutterAiutaTryOnLoadingPageFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.loading.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.loading.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.loading.styles.toNative

fun FlutterAiutaTryOnLoadingPageFeature.toNative(
    assetManager: AssetManager,
): AiutaTryOnLoadingPageFeature {
    return AiutaTryOnLoadingPageFeature(
        icons = icons.toNative(assetManager),
        strings = strings.toNative(),
        styles = styles.toNative()
    )
}