package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.gallery.icons

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaImagePickerPhotoGalleryIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaImagePickerPhotoGalleryIconsBuiltIn : FlutterAiutaImagePickerPhotoGalleryIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaImagePickerPhotoGalleryIconsCustom(
    @SerialName("gallery24")
    val gallery24: FlutterAiutaIcon
) : FlutterAiutaImagePickerPhotoGalleryIcons