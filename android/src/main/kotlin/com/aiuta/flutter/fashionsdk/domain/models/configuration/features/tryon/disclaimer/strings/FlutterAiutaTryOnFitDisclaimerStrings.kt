package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.strings

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTryOnFitDisclaimerStrings(
    @SerialName("fitDisclaimerTitle")
    val fitDisclaimerTitle: String,

    @SerialName("fitDisclaimerDescription")
    val fitDisclaimerDescription: String,

    @SerialName("fitDisclaimerButtonClose")
    val fitDisclaimerButtonClose: String
)