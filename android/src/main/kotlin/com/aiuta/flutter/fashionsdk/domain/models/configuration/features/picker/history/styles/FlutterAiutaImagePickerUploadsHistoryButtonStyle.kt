package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.history.styles

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
enum class FlutterAiutaImagePickerUploadsHistoryButtonStyle {
    @SerialName("primary")
    PRIMARY,

    @SerialName("blurred")
    BLURRED
}