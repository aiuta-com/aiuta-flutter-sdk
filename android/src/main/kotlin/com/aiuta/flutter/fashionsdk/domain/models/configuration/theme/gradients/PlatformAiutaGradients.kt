package com.aiuta.flutter.fashionsdk.domain.models.configuration.theme.gradients

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable


@Deprecated("Migrate to flutter models")
@Serializable
class PlatformAiutaGradients(
    @SerialName("loadingAnimation")
    val loadingAnimation: List<String>,
    @SerialName("tryOnButtonBackground")
    val tryOnButtonBackground: List<String>,
)