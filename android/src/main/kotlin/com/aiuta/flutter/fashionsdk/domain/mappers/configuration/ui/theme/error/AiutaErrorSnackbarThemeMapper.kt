package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.error

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.ui.theme.error.AiutaErrorSnackbarTheme
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.error.FlutterAiutaErrorSnackbarTheme
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.error.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.error.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.error.colors.toNative

fun FlutterAiutaErrorSnackbarTheme.toNative(assetManager: AssetManager): AiutaErrorSnackbarTheme {
    return AiutaErrorSnackbarTheme(
        strings = strings.toNative(),
        icons = icons.toNative(assetManager),
        colors = colors.toNative()
    )
}