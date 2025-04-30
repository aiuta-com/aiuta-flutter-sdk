package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.images

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaWelcomeScreenImages(
    @SerialName("welcomeBackground")
    val welcomeBackgroundPath: String
)