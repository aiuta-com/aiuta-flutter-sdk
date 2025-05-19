package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.error.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.ui.theme.error.icons.AiutaErrorSnackbarThemeIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.error.icons.FlutterAiutaErrorSnackbarThemeIcons

fun FlutterAiutaErrorSnackbarThemeIcons.toNative(
    assetManager: AssetManager
): AiutaErrorSnackbarThemeIcons {
    return object : AiutaErrorSnackbarThemeIcons {
        override val error36 = this@toNative.error36.toNative(assetManager)
    }
}