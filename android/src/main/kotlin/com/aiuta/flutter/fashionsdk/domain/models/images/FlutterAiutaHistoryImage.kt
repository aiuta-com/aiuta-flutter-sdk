package com.aiuta.flutter.fashionsdk.domain.models.images

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable


@Serializable
data class FlutterAiutaHistoryImage(
    @SerialName("id")
    val id: String,

    @SerialName("url")
    val url: String,

    @SerialName("type")
    val type: FlutterAiutaHistoryImageType,
)