package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.data

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
class FlutterAiutaImagePickerPredefinedModelData(
    @SerialName("preferredCategoryId")
    val preferredCategoryId: String,
)