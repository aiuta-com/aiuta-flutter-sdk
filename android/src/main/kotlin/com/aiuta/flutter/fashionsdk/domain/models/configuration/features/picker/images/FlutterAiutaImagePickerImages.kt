package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.images

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaImagePickerImages

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaImagePickerImagesBuiltIn : FlutterAiutaImagePickerImages

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
class FlutterAiutaImagePickerImagesCustom(
    @SerialName("examples")
    val examplePaths: List<String>
) : FlutterAiutaImagePickerImages