package com.aiuta.flutter.fashionsdk.domain.mappers.images

import com.aiuta.fashionsdk.configuration.features.models.images.AiutaHistoryImage
import com.aiuta.fashionsdk.configuration.features.models.images.AiutaHistoryImageType
import com.aiuta.flutter.fashionsdk.domain.models.images.FlutterAiutaHistoryImage
import com.aiuta.flutter.fashionsdk.domain.models.images.FlutterAiutaHistoryImageType

fun FlutterAiutaHistoryImage.toNative(): AiutaHistoryImage {
    return AiutaHistoryImage(
        id = id,
        url = url,
        type = type.toNative(),
    )
}

fun AiutaHistoryImage.toFlutter(): FlutterAiutaHistoryImage {
    return FlutterAiutaHistoryImage(
        id = id,
        url = url,
        type = type.toFlutter(),
    )
}

// Types
fun FlutterAiutaHistoryImageType.toNative(): AiutaHistoryImageType {
    return when (this) {
        FlutterAiutaHistoryImageType.USER -> AiutaHistoryImageType.USER
        FlutterAiutaHistoryImageType.AIUTA -> AiutaHistoryImageType.AIUTA
    }
}


fun AiutaHistoryImageType.toFlutter(): FlutterAiutaHistoryImageType {
    return when (this) {
        AiutaHistoryImageType.USER -> FlutterAiutaHistoryImageType.USER
        AiutaHistoryImageType.AIUTA -> FlutterAiutaHistoryImageType.AIUTA
    }
}