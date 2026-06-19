package com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.picker.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaShoesModeImagePickerStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaShoesModeImagePickerStringsBuiltIn :
    FlutterAiutaShoesModeImagePickerStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaShoesModeImagePickerStringsCustom(
    @SerialName("imagePickerShoesDescriptionEmpty")
    val imagePickerShoesDescriptionEmpty: String,
) : FlutterAiutaShoesModeImagePickerStrings
