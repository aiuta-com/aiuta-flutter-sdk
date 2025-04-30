package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.history

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.tryon.history.AiutaTryOnGenerationsHistoryFeature
import com.aiuta.flutter.fashionsdk.domain.listeners.actions.FlutterDataActionHandler
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.history.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.history.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.FlutterAiutaTryOnGenerationsHistoryFeature

fun FlutterAiutaTryOnGenerationsHistoryFeature.toNative(
    assetManager: AssetManager
): AiutaTryOnGenerationsHistoryFeature {
    return AiutaTryOnGenerationsHistoryFeature(
        icons = icons.toNative(assetManager),
        strings = strings.toNative(),
        dataProvider = FlutterDataActionHandler,
    )
}