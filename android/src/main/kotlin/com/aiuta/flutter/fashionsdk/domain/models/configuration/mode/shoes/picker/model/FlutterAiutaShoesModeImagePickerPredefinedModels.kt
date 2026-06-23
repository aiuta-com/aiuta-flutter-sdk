package com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.picker.model

import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.picker.model.strings.FlutterAiutaShoesModeImagePickerPredefinedModelsStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaShoesModeImagePickerPredefinedModels(
    @SerialName("strings")
    val strings: FlutterAiutaShoesModeImagePickerPredefinedModelsStrings,
)
