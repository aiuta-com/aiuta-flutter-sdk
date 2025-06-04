package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.share.watermark

import com.aiuta.fashionsdk.configuration.features.share.watermark.AiutaShareWatermarkFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.share.watermark.images.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.watermark.FlutterAiutaShareWatermarkFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaShareWatermarkFeature.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaShareWatermarkFeature {
    return AiutaShareWatermarkFeature(
        images = images.toNative(resourceScope)
    )
}