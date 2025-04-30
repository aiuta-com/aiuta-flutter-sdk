package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.validation.strings

import com.aiuta.fashionsdk.configuration.features.tryon.validation.strings.AiutaTryOnInputImageValidationFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.validation.strings.FlutterAiutaTryOnInputImageValidationStrings

fun FlutterAiutaTryOnInputImageValidationStrings.toNative(): AiutaTryOnInputImageValidationFeatureStrings {
    return object : AiutaTryOnInputImageValidationFeatureStrings {
        override val invalidInputImageDescription = this@toNative.invalidInputImageDescription
        override val invalidInputImageChangePhotoButton = this@toNative.invalidInputImageChangePhotoButton
    }
}