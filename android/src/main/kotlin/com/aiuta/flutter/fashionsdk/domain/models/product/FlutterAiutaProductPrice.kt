package com.aiuta.flutter.fashionsdk.domain.models.product

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaProductPrice(
    @SerialName("current")
    val current: String,

    @SerialName("old")
    val old: String? = null
)