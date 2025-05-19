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
        FlutterAiutaHistoryImageType.UPLOADED -> AiutaHistoryImageType.UPLOADED
        FlutterAiutaHistoryImageType.GENERATED -> AiutaHistoryImageType.GENERATED
        FlutterAiutaHistoryImageType.INPUT_MODEL -> AiutaHistoryImageType.INPUT_MODEL
        FlutterAiutaHistoryImageType.OUTPUT_MODEL -> AiutaHistoryImageType.OUTPUT_MODEL
    }
}


fun AiutaHistoryImageType.toFlutter(): FlutterAiutaHistoryImageType {
    return when (this) {
        AiutaHistoryImageType.UPLOADED -> FlutterAiutaHistoryImageType.UPLOADED
        AiutaHistoryImageType.GENERATED -> FlutterAiutaHistoryImageType.GENERATED
        AiutaHistoryImageType.INPUT_MODEL -> FlutterAiutaHistoryImageType.INPUT_MODEL
        AiutaHistoryImageType.OUTPUT_MODEL -> FlutterAiutaHistoryImageType.OUTPUT_MODEL
    }
}