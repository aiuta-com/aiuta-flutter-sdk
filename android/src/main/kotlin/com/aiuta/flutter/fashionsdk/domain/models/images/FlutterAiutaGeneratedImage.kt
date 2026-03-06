package com.aiuta.flutter.fashionsdk.domain.models.images

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
class FlutterAiutaGeneratedImage(
    @SerialName("id")
    val id: String,
    @SerialName("url")
    val url: String,
    @SerialName("ownerType")
    val type: FlutterAiutaOwnerType,
    @SerialName("productIds")
    val productIds: List<String>,
)