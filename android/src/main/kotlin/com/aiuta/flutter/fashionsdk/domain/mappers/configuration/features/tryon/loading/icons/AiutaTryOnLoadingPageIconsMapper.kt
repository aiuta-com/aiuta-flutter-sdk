package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.loading.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.defaults.icons.features.tryon.loading.DefaultAiutaTryOnLoadingPageFeatureIcons
import com.aiuta.fashionsdk.configuration.features.tryon.loading.icons.AiutaTryOnLoadingPageFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.icons.FlutterAiutaTryOnLoadingPageIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.icons.FlutterAiutaTryOnLoadingPageIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.icons.FlutterAiutaTryOnLoadingPageIconsCustom

fun FlutterAiutaTryOnLoadingPageIcons.toNative(
    assetManager: AssetManager
): AiutaTryOnLoadingPageFeatureIcons {
    return when (this) {
        is FlutterAiutaTryOnLoadingPageIconsBuiltIn -> DefaultAiutaTryOnLoadingPageFeatureIcons()
        is FlutterAiutaTryOnLoadingPageIconsCustom -> object : AiutaTryOnLoadingPageFeatureIcons {
            override val loading14 = this@toNative.loading14?.toNative(assetManager)
        }
    }
}