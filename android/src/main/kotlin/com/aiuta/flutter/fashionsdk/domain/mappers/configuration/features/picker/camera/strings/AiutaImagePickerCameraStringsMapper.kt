package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.camera.strings

import com.aiuta.fashionsdk.configuration.features.picker.camera.strings.AiutaImagePickerCameraFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.camera.strings.FlutterAiutaImagePickerCameraStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.camera.strings.FlutterAiutaImagePickerCameraStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.camera.strings.FlutterAiutaImagePickerCameraStringsCustom

fun FlutterAiutaImagePickerCameraStrings.toNative(): AiutaImagePickerCameraFeatureStrings {
    return when (this) {
        is FlutterAiutaImagePickerCameraStringsBuiltIn -> AiutaImagePickerCameraFeatureStrings.Default()
        is FlutterAiutaImagePickerCameraStringsCustom -> object : AiutaImagePickerCameraFeatureStrings {
            override val cameraButtonTakePhoto = this@toNative.cameraButtonTakePhoto
            override val cameraPermissionTitle = this@toNative.cameraPermissionTitle
            override val cameraPermissionDescription = this@toNative.cameraPermissionDescription
            override val cameraPermissionButtonOpenSettings = this@toNative.cameraPermissionButtonOpenSettings
        }
    }
}