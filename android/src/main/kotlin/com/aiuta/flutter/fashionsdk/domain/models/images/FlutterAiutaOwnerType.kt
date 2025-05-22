package com.aiuta.flutter.fashionsdk.domain.models.images

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
enum class FlutterAiutaOwnerType {

    @SerialName("user")
    USER,

    @SerialName("aiuta")
    AIUTA,
}