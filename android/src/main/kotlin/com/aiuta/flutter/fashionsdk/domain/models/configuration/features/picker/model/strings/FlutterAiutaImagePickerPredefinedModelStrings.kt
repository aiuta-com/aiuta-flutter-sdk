package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaImagePickerPredefinedModelStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaImagePickerPredefinedModelStringsBuiltIn : FlutterAiutaImagePickerPredefinedModelStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaImagePickerPredefinedModelStringsCustom(
    @SerialName("predefinedModelPageTitle")
    val predefinedModelPageTitle: String,

    @SerialName("predefinedModelOr")
    val predefinedModelOr: String,

    @SerialName("predefinedModelErrorEmptyModelsList")
    val predefinedModelErrorEmptyModelsList: String,

    @SerialName("predefinedModelCategories")
    val predefinedModelCategories: Map<String, String>
) : FlutterAiutaImagePickerPredefinedModelStrings