package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.shoes.picker.model.strings

import com.aiuta.fashionsdk.configuration.mode.shoes.picker.model.strings.AiutaShoesModeImagePickerPredefinedModelsStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.picker.model.strings.FlutterAiutaShoesModeImagePickerPredefinedModelsStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.picker.model.strings.FlutterAiutaShoesModeImagePickerPredefinedModelsStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.picker.model.strings.FlutterAiutaShoesModeImagePickerPredefinedModelsStringsCustom

fun FlutterAiutaShoesModeImagePickerPredefinedModelsStrings.toNative(): AiutaShoesModeImagePickerPredefinedModelsStrings {
    return when (this) {
        is FlutterAiutaShoesModeImagePickerPredefinedModelsStringsBuiltIn -> AiutaShoesModeImagePickerPredefinedModelsStrings.Default()
        is FlutterAiutaShoesModeImagePickerPredefinedModelsStringsCustom -> object : AiutaShoesModeImagePickerPredefinedModelsStrings {
            override val predefinedModelShoesPageTitle = this@toNative.predefinedModelShoesPageTitle
            override val predefinedModelShoesCategories = this@toNative.predefinedModelShoesCategories
        }
    }
}
