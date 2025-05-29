package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.gallery.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaImagePickerPhotoGalleryStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaImagePickerPhotoGalleryStringsBuiltIn : FlutterAiutaImagePickerPhotoGalleryStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaImagePickerPhotoGalleryStringsCustom(
    @SerialName("galleryButtonSelectPhoto")
    val galleryButtonSelectPhoto: String
) : FlutterAiutaImagePickerPhotoGalleryStrings