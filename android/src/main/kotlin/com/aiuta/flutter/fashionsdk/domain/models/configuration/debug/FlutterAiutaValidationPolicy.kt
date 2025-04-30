package com.aiuta.flutter.fashionsdk.domain.models.configuration.debug

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
enum class FlutterAiutaValidationPolicy {
    @SerialName("ignore")
    IGNORE,

    @SerialName("warning")
    WARNING,

    @SerialName("fatal")
    FATAL
}