package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.strings

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaWelcomeScreenStrings(
    @SerialName("welcomeTitle")
    val welcomeTitle: String,

    @SerialName("welcomeDescription")
    val welcomeDescription: String,

    @SerialName("welcomeButtonStart")
    val welcomeButtonStart: String
)