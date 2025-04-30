package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.strings

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTryOnStrings(
    @SerialName("tryOnPageTitle")
    val tryOnPageTitle: String,

    @SerialName("tryOn")
    val tryOn: String
)