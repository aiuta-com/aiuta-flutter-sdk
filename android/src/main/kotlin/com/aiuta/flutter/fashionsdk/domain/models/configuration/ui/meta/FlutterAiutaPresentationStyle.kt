package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.meta

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
enum class FlutterAiutaPresentationStyle {
    @SerialName("pageSheet")
    PAGE_SHEET,

    @SerialName("bottomSheet")
    BOTTOM_SHEET,

    @SerialName("fullScreen")
    FULL_SCREEN
}