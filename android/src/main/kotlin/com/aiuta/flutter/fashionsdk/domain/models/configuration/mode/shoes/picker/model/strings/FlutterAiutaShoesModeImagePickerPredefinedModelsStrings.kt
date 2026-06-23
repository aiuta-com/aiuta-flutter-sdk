package com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.picker.model.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaShoesModeImagePickerPredefinedModelsStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaShoesModeImagePickerPredefinedModelsStringsBuiltIn :
    FlutterAiutaShoesModeImagePickerPredefinedModelsStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaShoesModeImagePickerPredefinedModelsStringsCustom(
    @SerialName("predefinedModelShoesPageTitle")
    val predefinedModelShoesPageTitle: String,

    @SerialName("predefinedModelShoesCategories")
    val predefinedModelShoesCategories: Map<String, String>,
) : FlutterAiutaShoesModeImagePickerPredefinedModelsStrings
