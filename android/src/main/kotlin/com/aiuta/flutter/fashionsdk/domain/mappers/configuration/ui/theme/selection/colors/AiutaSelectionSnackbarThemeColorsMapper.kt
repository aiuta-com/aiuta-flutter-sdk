package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.selection.colors

import com.aiuta.fashionsdk.configuration.ui.theme.selection.colors.AiutaSelectionSnackbarThemeColors
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.color.toColor
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.selection.colors.FlutterAiutaSelectionSnackbarColors

fun FlutterAiutaSelectionSnackbarColors.toNative(): AiutaSelectionSnackbarThemeColors {
    return object : AiutaSelectionSnackbarThemeColors {
        override val selectionBackground = this@toNative.selectionBackground.toColor()
    }
}