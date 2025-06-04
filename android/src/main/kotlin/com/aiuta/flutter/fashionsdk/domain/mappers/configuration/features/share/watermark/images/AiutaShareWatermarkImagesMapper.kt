package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.share.watermark.images

import com.aiuta.fashionsdk.configuration.features.share.watermark.images.AiutaShareWatermarkFeatureImages
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.watermark.images.FlutterAiutaShareWatermarkImages
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.watermark.images.FlutterAiutaShareWatermarkImagesCustom
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeImage
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling

fun FlutterAiutaShareWatermarkImages.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaShareWatermarkFeatureImages {
    return when (this) {
        is FlutterAiutaShareWatermarkImagesCustom -> resourceScope.withResourceHandling(null) {
            object : AiutaShareWatermarkFeatureImages {
                override val logo = createNativeImage(this@toNative.watermarkPath)
            }
        }
    }
}