package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.camera

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.camera.icons.FlutterAiutaImagePickerCameraIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.camera.strings.FlutterAiutaImagePickerCameraStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaImagePickerCameraFeature(
    @SerialName("icons")
    val icons: FlutterAiutaImagePickerCameraIcons,

    @SerialName("strings")
    val strings: FlutterAiutaImagePickerCameraStrings
)