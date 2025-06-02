package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.defaults.icons.features.tryon.DefaultAiutaTryOnFeatureIcons
import com.aiuta.fashionsdk.configuration.features.tryon.icons.AiutaTryOnFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.icons.FlutterAiutaTryOnIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.icons.FlutterAiutaTryOnIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.icons.FlutterAiutaTryOnIconsCustom

fun FlutterAiutaTryOnIcons.toNative(
    assetManager: AssetManager
): AiutaTryOnFeatureIcons {
    return when (this) {
        is FlutterAiutaTryOnIconsBuiltIn -> DefaultAiutaTryOnFeatureIcons()
        is FlutterAiutaTryOnIconsCustom -> object : AiutaTryOnFeatureIcons {
            override val tryOn20 = this@toNative.tryOn20.toNative(assetManager)
        }
    }
}