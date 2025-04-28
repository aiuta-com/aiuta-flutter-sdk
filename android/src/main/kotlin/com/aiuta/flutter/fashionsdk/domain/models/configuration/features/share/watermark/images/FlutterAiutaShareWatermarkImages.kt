package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.watermark.images

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaShareWatermarkImages(
    @SerialName("watermark")
    val watermarkPath: String
)