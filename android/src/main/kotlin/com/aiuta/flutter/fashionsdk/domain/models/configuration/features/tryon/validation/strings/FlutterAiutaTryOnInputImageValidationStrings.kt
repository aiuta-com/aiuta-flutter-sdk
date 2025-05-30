package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.validation.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaTryOnInputImageValidationStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaTryOnInputImageValidationStringsBuiltIn : FlutterAiutaTryOnInputImageValidationStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaTryOnInputImageValidationStringsCustom(
    @SerialName("invalidInputImageDescription")
    val invalidInputImageDescription: String,

    @SerialName("invalidInputImageChangePhotoButton")
    val invalidInputImageChangePhotoButton: String
) : FlutterAiutaTryOnInputImageValidationStrings