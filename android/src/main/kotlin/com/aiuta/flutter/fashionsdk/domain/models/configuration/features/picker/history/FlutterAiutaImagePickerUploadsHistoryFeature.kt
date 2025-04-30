package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.history

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.history.strings.FlutterAiutaImagePickerUploadsHistoryStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.history.styles.FlutterAiutaImagePickerUploadsHistoryStyles
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaImagePickerUploadsHistoryFeature(
    @SerialName("strings")
    val strings: FlutterAiutaImagePickerUploadsHistoryStrings,

    @SerialName("styles")
    val styles: FlutterAiutaImagePickerUploadsHistoryStyles
)