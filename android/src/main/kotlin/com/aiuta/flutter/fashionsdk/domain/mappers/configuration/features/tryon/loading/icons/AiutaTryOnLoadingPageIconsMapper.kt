package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.loading.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.tryon.loading.icons.AiutaTryOnLoadingPageFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.icons.FlutterAiutaTryOnLoadingPageIcons

fun FlutterAiutaTryOnLoadingPageIcons.toNative(
    assetManager: AssetManager
): AiutaTryOnLoadingPageFeatureIcons {
    return object : AiutaTryOnLoadingPageFeatureIcons {
        override val loading14 = this@toNative.loading14?.toNative(assetManager)
    }
}