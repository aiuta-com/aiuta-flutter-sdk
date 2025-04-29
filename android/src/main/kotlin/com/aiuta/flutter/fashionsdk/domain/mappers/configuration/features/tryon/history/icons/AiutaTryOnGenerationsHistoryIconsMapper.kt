package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.history.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.tryon.history.icons.AiutaTryOnGenerationsHistoryFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.icons.FlutterAiutaTryOnGenerationsHistoryIcons

fun FlutterAiutaTryOnGenerationsHistoryIcons.toNative(
    assetManager: AssetManager
): AiutaTryOnGenerationsHistoryFeatureIcons {
    return object : AiutaTryOnGenerationsHistoryFeatureIcons {
        override val history24 = this@toNative.history24.toNative(assetManager)
    }
}