package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.share.watermark.images

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.share.watermark.images.AiutaShareWatermarkFeatureImages
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNativeImage
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.watermark.images.FlutterAiutaShareWatermarkImages
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.watermark.images.FlutterAiutaShareWatermarkImagesBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.watermark.images.FlutterAiutaShareWatermarkImagesCustom

fun FlutterAiutaShareWatermarkImages.toNative(
    assetManager: AssetManager
): AiutaShareWatermarkFeatureImages {
    return when (this) {
        is FlutterAiutaShareWatermarkImagesBuiltIn -> error("TODO: Need support DefaultAiutaShareWatermarkFeatureImages")
        is FlutterAiutaShareWatermarkImagesCustom -> object : AiutaShareWatermarkFeatureImages {
            override val logo = this@toNative.watermarkPath.toNativeImage(assetManager)
        }
    }
}