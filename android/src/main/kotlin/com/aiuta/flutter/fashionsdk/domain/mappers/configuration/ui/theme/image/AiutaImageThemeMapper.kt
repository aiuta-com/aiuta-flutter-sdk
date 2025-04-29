package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.image

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.ui.theme.image.AiutaImageTheme
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.image.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.image.shapes.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.image.FlutterAiutaImageTheme

fun FlutterAiutaImageTheme.toNative(assetManager: AssetManager): AiutaImageTheme {
    return AiutaImageTheme(
        shapes = shapes.toNative(),
        icons = icons.toNative(assetManager)
    )
}