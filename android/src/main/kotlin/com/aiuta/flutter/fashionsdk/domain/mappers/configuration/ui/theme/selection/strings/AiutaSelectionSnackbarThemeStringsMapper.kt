package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.selection.strings

import com.aiuta.fashionsdk.configuration.ui.theme.selection.strings.AiutaSelectionSnackbarThemeStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.selection.strings.FlutterAiutaSelectionSnackbarStrings

fun FlutterAiutaSelectionSnackbarStrings.toNative(): AiutaSelectionSnackbarThemeStrings {
    return object : AiutaSelectionSnackbarThemeStrings {
        override val select = this@toNative.select
        override val cancel = this@toNative.cancel
        override val selectAll = this@toNative.selectAll
        override val unselectAll = this@toNative.unselectAll
    }
}