package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.error.strings

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaErrorSnackbarThemeStrings(
    @SerialName("defaultErrorMessage")
    val defaultErrorMessage: String,

    @SerialName("tryAgainButton")
    val tryAgainButton: String,
)