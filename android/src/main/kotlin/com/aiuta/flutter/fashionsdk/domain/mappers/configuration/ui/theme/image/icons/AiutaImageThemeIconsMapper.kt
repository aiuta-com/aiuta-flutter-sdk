package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.image.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.defaults.icons.theme.image.DefaultAiutaImageThemeIcons
import com.aiuta.fashionsdk.configuration.ui.theme.image.icons.AiutaImageThemeIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.image.icons.FlutterAiutaImageIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.image.icons.FlutterAiutaImageIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.image.icons.FlutterAiutaImageIconsCustom

fun FlutterAiutaImageIcons.toNative(assetManager: AssetManager): AiutaImageThemeIcons {
    return when (this) {
        is FlutterAiutaImageIconsBuiltIn -> DefaultAiutaImageThemeIcons()
        is FlutterAiutaImageIconsCustom -> object : AiutaImageThemeIcons {
            override val error36 = this@toNative.imageError36.toNative(assetManager)
        }
    }
}