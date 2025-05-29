package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.error.strings

import com.aiuta.fashionsdk.configuration.ui.theme.error.strings.AiutaErrorSnackbarThemeStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.error.strings.FlutterAiutaErrorSnackbarThemeStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.error.strings.FlutterAiutaErrorSnackbarThemeStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.error.strings.FlutterAiutaErrorSnackbarThemeStringsCustom

fun FlutterAiutaErrorSnackbarThemeStrings.toNative(): AiutaErrorSnackbarThemeStrings {
    return when (this) {
        is FlutterAiutaErrorSnackbarThemeStringsBuiltIn -> AiutaErrorSnackbarThemeStrings.Default()
        is FlutterAiutaErrorSnackbarThemeStringsCustom -> object : AiutaErrorSnackbarThemeStrings {
            override val defaultErrorMessage = this@toNative.defaultErrorMessage
            override val tryAgainButton = this@toNative.tryAgainButton
        }
    }
}