package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.share.watermark.images

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.share.watermark.images.AiutaShareWatermarkFeatureImages
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNativeImage
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.watermark.images.FlutterAiutaShareWatermarkImages

fun FlutterAiutaShareWatermarkImages.toNative(
    assetManager: AssetManager
): AiutaShareWatermarkFeatureImages {
    return object : AiutaShareWatermarkFeatureImages {
        override val logo = this@toNative.watermarkPath.toNativeImage(assetManager)
    }
}