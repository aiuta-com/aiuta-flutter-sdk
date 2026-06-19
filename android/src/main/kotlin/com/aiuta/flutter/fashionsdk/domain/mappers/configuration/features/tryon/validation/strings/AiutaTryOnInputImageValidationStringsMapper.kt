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
            override val noPeopleDetectedDescription = this@toNative.noPeopleDetectedDescription
            override val tooManyPeopleDetectedDescription = this@toNative.tooManyPeopleDetectedDescription
            override val childDetectedDescription = this@toNative.childDetectedDescription
            override val insufficientTargetAreaDescription = this@toNative.insufficientTargetAreaDescription
            override val internalRestrictionDescription = this@toNative.internalRestrictionDescription
        }
    }
}