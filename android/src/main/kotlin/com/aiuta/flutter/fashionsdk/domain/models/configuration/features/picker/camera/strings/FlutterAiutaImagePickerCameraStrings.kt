package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.camera.strings

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaImagePickerCameraStrings(
    @SerialName("cameraButtonTakePhoto")
    val cameraButtonTakePhoto: String,

    @SerialName("cameraPermissionTitle")
    val cameraPermissionTitle: String,

    @SerialName("cameraPermissionDescription")
    val cameraPermissionDescription: String,

    @SerialName("cameraPermissionButtonOpenSettings")
    val cameraPermissionButtonOpenSettings: String
)