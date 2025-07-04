package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.other.icons

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaTryOnWithOtherPhotoIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaTryOnWithOtherPhotoIconsBuiltIn : FlutterAiutaTryOnWithOtherPhotoIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaTryOnWithOtherPhotoIconsCustom(
    @SerialName("changePhoto24")
    val changePhoto24: FlutterAiutaIcon
) : FlutterAiutaTryOnWithOtherPhotoIcons