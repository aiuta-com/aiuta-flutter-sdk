package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.error.colors

import com.aiuta.fashionsdk.configuration.ui.theme.error.colors.AiutaErrorSnackbarThemeColors
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.color.toColor
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.error.colors.FlutterAiutaErrorSnackbarThemeColors

fun FlutterAiutaErrorSnackbarThemeColors.toNative(): AiutaErrorSnackbarThemeColors {
    return object : AiutaErrorSnackbarThemeColors {
        override val errorBackground = this@toNative.errorBackground.toColor()
        override val errorPrimary = this@toNative.errorPrimary.toColor()
    }
}