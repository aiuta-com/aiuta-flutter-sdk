package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.history.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaImagePickerUploadsHistoryStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
class FlutterAiutaImagePickerUploadsHistoryStringsBuiltIn(
    @SerialName("isPredefinedModelAvailable")
    val isPredefinedModelAvailable: Boolean,
) : FlutterAiutaImagePickerUploadsHistoryStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaImagePickerUploadsHistoryStringsCustom(
    @SerialName("uploadsHistoryButtonNewPhoto")
    val uploadsHistoryButtonNewPhoto: String,

    @SerialName("uploadsHistoryTitle")
    val uploadsHistoryTitle: String,

    @SerialName("uploadsHistoryButtonChangePhoto")
    val uploadsHistoryButtonChangePhoto: String
) : FlutterAiutaImagePickerUploadsHistoryStrings