package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.history.styles

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterAiutaComponentStyle
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaImagePickerUploadsHistoryStyles(
    @SerialName("changePhotoButtonStyle")
    val changePhotoButtonStyle: FlutterAiutaComponentStyle
)