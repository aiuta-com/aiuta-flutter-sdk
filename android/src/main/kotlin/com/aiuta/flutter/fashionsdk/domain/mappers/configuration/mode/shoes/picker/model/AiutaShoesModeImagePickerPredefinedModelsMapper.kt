package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.shoes.picker.model

import com.aiuta.fashionsdk.configuration.mode.shoes.picker.model.AiutaShoesModeImagePickerPredefinedModels
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.shoes.picker.model.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.picker.model.FlutterAiutaShoesModeImagePickerPredefinedModels

fun FlutterAiutaShoesModeImagePickerPredefinedModels.toNative(): AiutaShoesModeImagePickerPredefinedModels {
    return AiutaShoesModeImagePickerPredefinedModels(
        strings = strings.toNative(),
    )
}
