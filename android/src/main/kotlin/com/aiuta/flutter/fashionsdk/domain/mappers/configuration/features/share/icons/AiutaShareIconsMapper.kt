package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.share.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.defaults.icons.features.share.DefaultAiutaShareFeatureIcons
import com.aiuta.fashionsdk.configuration.features.share.icons.AiutaShareFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.icons.FlutterAiutaShareIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.icons.FlutterAiutaShareIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.icons.FlutterAiutaShareIconsCustom

fun FlutterAiutaShareIcons.toNative(
    assetManager: AssetManager
): AiutaShareFeatureIcons {
    return when (this) {
        is FlutterAiutaShareIconsBuiltIn -> DefaultAiutaShareFeatureIcons()
        is FlutterAiutaShareIconsCustom -> object : AiutaShareFeatureIcons {
            override val share24 = this@toNative.share24.toNative(assetManager)
        }
    }
}