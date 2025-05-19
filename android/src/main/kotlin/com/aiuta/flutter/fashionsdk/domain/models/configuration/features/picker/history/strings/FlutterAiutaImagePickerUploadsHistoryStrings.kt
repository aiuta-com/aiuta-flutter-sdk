package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.history.strings

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaImagePickerUploadsHistoryStrings(
    @SerialName("uploadsHistoryButtonNewPhoto")
    val uploadsHistoryButtonNewPhoto: String,

    @SerialName("uploadsHistoryTitle")
    val uploadsHistoryTitle: String,

    @SerialName("uploadsHistoryButtonChangePhoto")
    val uploadsHistoryButtonChangePhoto: String
)