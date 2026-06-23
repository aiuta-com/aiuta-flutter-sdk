package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.shoes.picker.strings

import com.aiuta.fashionsdk.configuration.mode.shoes.picker.strings.AiutaShoesModeImagePickerStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.picker.strings.FlutterAiutaShoesModeImagePickerStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.picker.strings.FlutterAiutaShoesModeImagePickerStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.picker.strings.FlutterAiutaShoesModeImagePickerStringsCustom

fun FlutterAiutaShoesModeImagePickerStrings.toNative(): AiutaShoesModeImagePickerStrings {
    return when (this) {
        is FlutterAiutaShoesModeImagePickerStringsBuiltIn -> AiutaShoesModeImagePickerStrings.Default()
        is FlutterAiutaShoesModeImagePickerStringsCustom -> object : AiutaShoesModeImagePickerStrings {
            override val imagePickerShoesDescriptionEmpty = this@toNative.imagePickerShoesDescriptionEmpty
        }
    }
}
