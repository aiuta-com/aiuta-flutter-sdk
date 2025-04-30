package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.watermark

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.watermark.images.FlutterAiutaShareWatermarkImages
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaShareWatermarkFeature(
    @SerialName("images")
    val images: FlutterAiutaShareWatermarkImages
)