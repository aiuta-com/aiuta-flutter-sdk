package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.selection

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.ui.theme.selection.AiutaSelectionSnackbarTheme
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.selection.FlutterAiutaSelectionSnackbarTheme
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.selection.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.selection.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.selection.colors.toNative

fun FlutterAiutaSelectionSnackbarTheme.toNative(
    assetManager: AssetManager,
): AiutaSelectionSnackbarTheme {
    return AiutaSelectionSnackbarTheme(
        strings = strings.toNative(),
        icons = icons.toNative(assetManager),
        colors = colors.toNative()
    )
}