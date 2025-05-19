package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.camera.icons

import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaImagePickerCameraIcons(
    @SerialName("camera24")
    val camera24: FlutterAiutaIcon
)