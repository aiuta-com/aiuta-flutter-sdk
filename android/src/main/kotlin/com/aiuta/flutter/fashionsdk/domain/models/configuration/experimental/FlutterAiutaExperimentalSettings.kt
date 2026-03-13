package com.aiuta.flutter.fashionsdk.domain.models.configuration.experimental

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaExperimentalSettings(
    @SerialName("shouldOpenLinksInCustomTab")
    val shouldOpenLinksInCustomTab: Boolean
)
