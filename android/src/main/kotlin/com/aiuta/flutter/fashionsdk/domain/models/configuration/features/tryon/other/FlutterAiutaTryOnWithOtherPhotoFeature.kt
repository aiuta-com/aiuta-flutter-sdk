package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.other

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.other.icons.FlutterAiutaTryOnWithOtherPhotoIcons
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTryOnWithOtherPhotoFeature(
    @SerialName("icons")
    val icons: FlutterAiutaTryOnWithOtherPhotoIcons
)