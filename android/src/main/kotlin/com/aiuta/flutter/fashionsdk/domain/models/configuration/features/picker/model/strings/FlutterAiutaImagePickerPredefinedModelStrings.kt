package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.strings

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaImagePickerPredefinedModelStrings(
    @SerialName("predefinedModelPageTitle")
    val predefinedModelPageTitle: String,

    @SerialName("predefinedModelOr")
    val predefinedModelOr: String,

    @SerialName("predefinedModelErrorEmptyModelsList")
    val predefinedModelErrorEmptyModelsList: String,

    @SerialName("predefinedModelCategories")
    val predefinedModelCategories: Map<String, String>
)