package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.selection.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.ui.theme.selection.icons.AiutaSelectionSnackbarThemeIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.selection.icons.FlutterAiutaSelectionSnackbarIcons

fun FlutterAiutaSelectionSnackbarIcons.toNative(
    assetManager: AssetManager
): AiutaSelectionSnackbarThemeIcons {
    return object : AiutaSelectionSnackbarThemeIcons {
        override val trash24 = this@toNative.trash24.toNative(assetManager)
        override val check20 = this@toNative.check20.toNative(assetManager)
    }
}