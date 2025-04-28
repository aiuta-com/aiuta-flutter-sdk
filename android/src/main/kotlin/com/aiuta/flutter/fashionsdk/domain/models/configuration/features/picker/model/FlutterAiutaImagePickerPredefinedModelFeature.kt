package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.icons.FlutterAiutaImagePickerPredefinedModelIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.strings.FlutterAiutaImagePickerPredefinedModelStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaImagePickerPredefinedModelFeature(
    @SerialName("icons")
    val icons: FlutterAiutaImagePickerPredefinedModelIcons,

    @SerialName("strings")
    val strings: FlutterAiutaImagePickerPredefinedModelStrings
)