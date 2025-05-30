package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.history.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.defaults.icons.features.tryon.history.DefaultAiutaTryOnGenerationsHistoryFeatureIcons
import com.aiuta.fashionsdk.configuration.features.tryon.history.icons.AiutaTryOnGenerationsHistoryFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.icons.FlutterAiutaTryOnGenerationsHistoryIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.icons.FlutterAiutaTryOnGenerationsHistoryIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.icons.FlutterAiutaTryOnGenerationsHistoryIconsCustom

fun FlutterAiutaTryOnGenerationsHistoryIcons.toNative(
    assetManager: AssetManager
): AiutaTryOnGenerationsHistoryFeatureIcons {
    return when (this) {
        is FlutterAiutaTryOnGenerationsHistoryIconsBuiltIn -> DefaultAiutaTryOnGenerationsHistoryFeatureIcons()
        is FlutterAiutaTryOnGenerationsHistoryIconsCustom -> object : AiutaTryOnGenerationsHistoryFeatureIcons {
            override val history24 = this@toNative.history24.toNative(assetManager)
        }
    }
}