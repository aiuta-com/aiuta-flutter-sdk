package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.strings

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaImagePickerStrings(
    @SerialName("imagePickerTitleEmpty")
    val imagePickerTitleEmpty: String,

    @SerialName("imagePickerDescriptionEmpty")
    val imagePickerDescriptionEmpty: String,

    @SerialName("imagePickerButtonUploadImage")
    val imagePickerButtonUploadImage: String
)