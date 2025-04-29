package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.share.watermark

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.share.watermark.AiutaShareWatermarkFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.share.watermark.images.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.watermark.FlutterAiutaShareWatermarkFeature

fun FlutterAiutaShareWatermarkFeature.toNative(
    assetManager: AssetManager
): AiutaShareWatermarkFeature {
    return AiutaShareWatermarkFeature(
        images = images.toNative(assetManager)
    )
}