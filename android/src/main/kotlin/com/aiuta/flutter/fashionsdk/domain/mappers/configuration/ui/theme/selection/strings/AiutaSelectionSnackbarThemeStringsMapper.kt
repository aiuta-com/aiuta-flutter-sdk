package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.selection.strings

import com.aiuta.fashionsdk.configuration.ui.theme.selection.strings.AiutaSelectionSnackbarThemeStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.selection.strings.FlutterAiutaSelectionSnackbarStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.selection.strings.FlutterAiutaSelectionSnackbarStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.selection.strings.FlutterAiutaSelectionSnackbarStringsCustom

fun FlutterAiutaSelectionSnackbarStrings.toNative(): AiutaSelectionSnackbarThemeStrings {
    return when (this) {
        is FlutterAiutaSelectionSnackbarStringsBuiltIn -> AiutaSelectionSnackbarThemeStrings.Default()
        is FlutterAiutaSelectionSnackbarStringsCustom -> object : AiutaSelectionSnackbarThemeStrings {
            override val select = this@toNative.select
            override val cancel = this@toNative.cancel
            override val selectAll = this@toNative.selectAll
            override val unselectAll = this@toNative.unselectAll
        }
    }
}