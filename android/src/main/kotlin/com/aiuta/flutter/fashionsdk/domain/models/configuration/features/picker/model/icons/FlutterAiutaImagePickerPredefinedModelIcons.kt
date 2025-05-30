package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.icons

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaImagePickerPredefinedModelIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaImagePickerPredefinedModelIconsBuiltIn : FlutterAiutaImagePickerPredefinedModelIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaImagePickerPredefinedModelIconsCustom(
    @SerialName("selectModels24")
    val selectModels24: FlutterAiutaIcon
) : FlutterAiutaImagePickerPredefinedModelIcons