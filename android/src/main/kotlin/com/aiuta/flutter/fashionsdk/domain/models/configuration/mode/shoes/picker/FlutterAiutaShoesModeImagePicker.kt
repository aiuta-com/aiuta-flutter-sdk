package com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.picker

import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.media.FlutterAiutaMedia
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.picker.model.FlutterAiutaShoesModeImagePickerPredefinedModels
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.picker.strings.FlutterAiutaShoesModeImagePickerStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaShoesModeImagePicker(
    @SerialName("predefinedModels")
    val predefinedModels: FlutterAiutaShoesModeImagePickerPredefinedModels,

    @SerialName("images")
    val images: FlutterAiutaMedia,

    @SerialName("strings")
    val strings: FlutterAiutaShoesModeImagePickerStrings,
)
