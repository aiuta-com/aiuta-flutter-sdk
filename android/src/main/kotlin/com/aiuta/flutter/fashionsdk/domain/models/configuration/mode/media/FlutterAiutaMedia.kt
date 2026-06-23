package com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.media

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaMedia(
    @SerialName("image")
    val image: String,

    @SerialName("videoSource")
    val videoSource: String? = null,

    @SerialName("contentScale")
    val contentScale: FlutterAiutaMediaContentScale = FlutterAiutaMediaContentScale.FILL,
)

@Serializable
enum class FlutterAiutaMediaContentScale {
    @SerialName("fit")
    FIT,

    @SerialName("fill")
    FILL,
}
