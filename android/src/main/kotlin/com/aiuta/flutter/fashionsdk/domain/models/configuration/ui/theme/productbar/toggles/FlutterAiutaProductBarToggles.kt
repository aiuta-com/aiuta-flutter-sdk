package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.toggles

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaProductBarToggles(
    @SerialName("applyProductFirstImageExtraPadding")
    val applyProductFirstImageExtraPadding: Boolean
)