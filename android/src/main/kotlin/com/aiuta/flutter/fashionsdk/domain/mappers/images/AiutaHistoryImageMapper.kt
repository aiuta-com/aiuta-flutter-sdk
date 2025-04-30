package com.aiuta.flutter.fashionsdk.domain.mappers.images

import com.aiuta.fashionsdk.configuration.features.models.images.AiutaHistoryImage
import com.aiuta.flutter.fashionsdk.domain.models.images.FlutterAiutaHistoryImage

fun FlutterAiutaHistoryImage.toNative(): AiutaHistoryImage {
    return AiutaHistoryImage(
        id = id,
        url = url
    )
}

fun AiutaHistoryImage.toFlutter(): FlutterAiutaHistoryImage {
    return FlutterAiutaHistoryImage(
        id = id,
        url = url
    )
}