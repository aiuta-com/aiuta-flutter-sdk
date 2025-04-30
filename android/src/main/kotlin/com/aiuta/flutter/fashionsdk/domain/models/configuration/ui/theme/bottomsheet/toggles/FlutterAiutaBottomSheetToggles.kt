package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.bottomsheet.toggles

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaBottomSheetToggles(
    @SerialName("extendDelimitersToTheRight")
    val extendDelimitersToTheRight: Boolean,

    @SerialName("extendDelimitersToTheLeft")
    val extendDelimitersToTheLeft: Boolean
)