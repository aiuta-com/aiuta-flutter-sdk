package com.aiuta.flutter.fashionsdk.domain.models.images

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
class FlutterAiutaInputImage(
    @SerialName("id")
    val id: String,
    @SerialName("url")
    val url: String,
    @SerialName("ownerType")
    val ownerType: FlutterAiutaOwnerType,
)