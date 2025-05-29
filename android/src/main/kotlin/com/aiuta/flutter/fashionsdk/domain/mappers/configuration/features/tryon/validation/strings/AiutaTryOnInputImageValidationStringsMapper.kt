package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.validation.strings

import com.aiuta.fashionsdk.configuration.features.tryon.validation.strings.AiutaTryOnInputImageValidationFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.validation.strings.FlutterAiutaTryOnInputImageValidationStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.validation.strings.FlutterAiutaTryOnInputImageValidationStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.validation.strings.FlutterAiutaTryOnInputImageValidationStringsCustom

fun FlutterAiutaTryOnInputImageValidationStrings.toNative(): AiutaTryOnInputImageValidationFeatureStrings {
    return when (this) {
        is FlutterAiutaTryOnInputImageValidationStringsBuiltIn -> AiutaTryOnInputImageValidationFeatureStrings.Default()
        is FlutterAiutaTryOnInputImageValidationStringsCustom -> object : AiutaTryOnInputImageValidationFeatureStrings {
            override val invalidInputImageDescription = this@toNative.invalidInputImageDescription
            override val invalidInputImageChangePhotoButton = this@toNative.invalidInputImageChangePhotoButton
        }
    }
}