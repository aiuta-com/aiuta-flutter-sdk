package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.camera.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaImagePickerCameraStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaImagePickerCameraStringsBuiltIn : FlutterAiutaImagePickerCameraStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaImagePickerCameraStringsCustom(
    @SerialName("cameraButtonTakePhoto")
    val cameraButtonTakePhoto: String,

    @SerialName("cameraPermissionTitle")
    val cameraPermissionTitle: String,

    @SerialName("cameraPermissionDescription")
    val cameraPermissionDescription: String,

    @SerialName("cameraPermissionButtonOpenSettings")
    val cameraPermissionButtonOpenSettings: String
) : FlutterAiutaImagePickerCameraStrings