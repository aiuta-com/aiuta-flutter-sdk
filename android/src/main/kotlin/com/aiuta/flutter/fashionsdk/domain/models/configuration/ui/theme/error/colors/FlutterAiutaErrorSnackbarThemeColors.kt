package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.error.colors

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaErrorSnackbarThemeColors(
    @SerialName("errorBackground")
    val errorBackground: String,

    @SerialName("errorPrimary")
    val errorPrimary: String
)