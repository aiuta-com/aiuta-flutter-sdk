package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.camera.strings

import com.aiuta.fashionsdk.configuration.features.picker.camera.strings.AiutaImagePickerCameraFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.camera.strings.FlutterAiutaImagePickerCameraStrings

fun FlutterAiutaImagePickerCameraStrings.toNative(): AiutaImagePickerCameraFeatureStrings {
    return object : AiutaImagePickerCameraFeatureStrings {
        override val cameraButtonTakePhoto = this@toNative.cameraButtonTakePhoto
        override val cameraPermissionTitle = this@toNative.cameraPermissionTitle
        override val cameraPermissionDescription = this@toNative.cameraPermissionDescription
        override val cameraPermissionButtonOpenSettings = this@toNative.cameraPermissionButtonOpenSettings
    }
}