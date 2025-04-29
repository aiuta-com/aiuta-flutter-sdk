package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.validation

import com.aiuta.fashionsdk.configuration.features.tryon.validation.AiutaTryOnInputImageValidationFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.validation.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.validation.FlutterAiutaTryOnInputImageValidationFeature

fun FlutterAiutaTryOnInputImageValidationFeature.toNative(): AiutaTryOnInputImageValidationFeature {
    return AiutaTryOnInputImageValidationFeature(
        strings = strings.toNative()
    )
}