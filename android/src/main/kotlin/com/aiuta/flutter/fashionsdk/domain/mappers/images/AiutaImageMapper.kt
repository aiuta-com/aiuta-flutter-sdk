package com.aiuta.flutter.fashionsdk.domain.mappers.images

import com.aiuta.fashionsdk.configuration.features.models.images.AiutaGeneratedImage
import com.aiuta.fashionsdk.configuration.features.models.images.AiutaInputImage
import com.aiuta.fashionsdk.configuration.features.models.images.AiutaOwnerType
import com.aiuta.flutter.fashionsdk.domain.models.images.FlutterAiutaGeneratedImage
import com.aiuta.flutter.fashionsdk.domain.models.images.FlutterAiutaInputImage
import com.aiuta.flutter.fashionsdk.domain.models.images.FlutterAiutaOwnerType

// Input
fun FlutterAiutaInputImage.toNative(): AiutaInputImage {
    return AiutaInputImage(
        id = id,
        url = url,
        type = type.toNative(),
    )
}

fun AiutaInputImage.toFlutter(): FlutterAiutaInputImage {
    return FlutterAiutaInputImage(
        id = id,
        url = url,
        type = type.toFlutter(),
    )
}

// Generated
fun FlutterAiutaGeneratedImage.toNative(): AiutaGeneratedImage {
    return AiutaGeneratedImage(
        id = id,
        url = url,
        type = type.toNative(),
        productIds = productIds,
    )
}

fun AiutaGeneratedImage.toFlutter(): FlutterAiutaGeneratedImage {
    return FlutterAiutaGeneratedImage(
        id = id,
        url = url,
        type = type.toFlutter(),
        productIds = productIds,
    )
}

// Types
fun FlutterAiutaOwnerType.toNative(): AiutaOwnerType {
    return when (this) {
        FlutterAiutaOwnerType.USER -> AiutaOwnerType.USER
        FlutterAiutaOwnerType.AIUTA -> AiutaOwnerType.AIUTA
    }
}

fun AiutaOwnerType.toFlutter(): FlutterAiutaOwnerType {
    return when (this) {
        AiutaOwnerType.USER -> FlutterAiutaOwnerType.USER
        AiutaOwnerType.AIUTA -> FlutterAiutaOwnerType.AIUTA
    }
}