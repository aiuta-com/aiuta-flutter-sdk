package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaImagePickerStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaImagePickerStringsBuiltIn : FlutterAiutaImagePickerStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaImagePickerStringsCustom(
    @SerialName("imagePickerTitleEmpty")
    val imagePickerTitleEmpty: String,

    @SerialName("imagePickerDescriptionEmpty")
    val imagePickerDescriptionEmpty: String,

    @SerialName("imagePickerButtonUploadImage")
    val imagePickerButtonUploadImage: String
) : FlutterAiutaImagePickerStrings