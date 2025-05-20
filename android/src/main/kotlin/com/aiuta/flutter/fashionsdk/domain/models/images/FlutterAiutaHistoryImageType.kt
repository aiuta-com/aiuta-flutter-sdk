package com.aiuta.flutter.fashionsdk.domain.models.images

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
enum class FlutterAiutaHistoryImageType {

    @SerialName("user")
    USER,

    @SerialName("aiuta")
    AIUTA,
}