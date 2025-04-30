package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.productbar.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.ui.theme.productbar.icons.AiutaProductBarThemeIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.icon.FlutterAiutaProductBarThemeIcons

fun FlutterAiutaProductBarThemeIcons.toNative(
    assetManager: AssetManager
): AiutaProductBarThemeIcons {
    return object : AiutaProductBarThemeIcons {
        override val arrow16 = this@toNative.arrow16.toNative(assetManager)
    }
}