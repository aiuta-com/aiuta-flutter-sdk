package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.data.FlutterAiutaImagePickerPredefinedModelData
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.icons.FlutterAiutaImagePickerPredefinedModelIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.strings.FlutterAiutaImagePickerPredefinedModelStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaImagePickerPredefinedModelFeature(
    @SerialName("data")
    val data: FlutterAiutaImagePickerPredefinedModelData? = null,

    @SerialName("icons")
    val icons: FlutterAiutaImagePickerPredefinedModelIcons,

    @SerialName("strings")
    val strings: FlutterAiutaImagePickerPredefinedModelStrings
)