package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar.toggles

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaPageBarToggles(
    @SerialName("preferCloseButtonOnTheRight")
    val preferCloseButtonOnTheRight: Boolean
)