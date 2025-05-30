package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.strings

import com.aiuta.fashionsdk.configuration.features.picker.strings.AiutaImagePickerFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.strings.FlutterAiutaImagePickerStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.strings.FlutterAiutaImagePickerStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.strings.FlutterAiutaImagePickerStringsCustom

fun FlutterAiutaImagePickerStrings.toNative(): AiutaImagePickerFeatureStrings {
    return when (this) {
        is FlutterAiutaImagePickerStringsBuiltIn -> AiutaImagePickerFeatureStrings.Default()
        is FlutterAiutaImagePickerStringsCustom -> object : AiutaImagePickerFeatureStrings {
            override val imagePickerTitleEmpty = this@toNative.imagePickerTitleEmpty
            override val imagePickerDescriptionEmpty = this@toNative.imagePickerDescriptionEmpty
            override val imagePickerButtonUploadImage = this@toNative.imagePickerButtonUploadImage
        }
    }
}