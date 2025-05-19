package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.strings

import com.aiuta.fashionsdk.configuration.features.picker.strings.AiutaImagePickerFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.strings.FlutterAiutaImagePickerStrings

fun FlutterAiutaImagePickerStrings.toNative(): AiutaImagePickerFeatureStrings {
    return object : AiutaImagePickerFeatureStrings {
        override val imagePickerTitleEmpty = this@toNative.imagePickerTitleEmpty
        override val imagePickerDescriptionEmpty = this@toNative.imagePickerDescriptionEmpty
        override val imagePickerButtonUploadImage = this@toNative.imagePickerButtonUploadImage
    }
}