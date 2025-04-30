package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.error.strings

import com.aiuta.fashionsdk.configuration.ui.theme.error.strings.AiutaErrorSnackbarThemeStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.error.strings.FlutterAiutaErrorSnackbarThemeStrings

fun FlutterAiutaErrorSnackbarThemeStrings.toNative(): AiutaErrorSnackbarThemeStrings {
    return object : AiutaErrorSnackbarThemeStrings {
        override val defaultErrorMessage = this@toNative.defaultErrorMessage
        override val tryAgainButton = this@toNative.tryAgainButton
    }
}