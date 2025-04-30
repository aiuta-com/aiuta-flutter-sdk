package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.icons.FlutterAiutaTryOnGenerationsHistoryIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.strings.FlutterAiutaTryOnGenerationsHistoryStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTryOnGenerationsHistoryFeature(
    @SerialName("icons")
    val icons: FlutterAiutaTryOnGenerationsHistoryIcons,

    @SerialName("strings")
    val strings: FlutterAiutaTryOnGenerationsHistoryStrings
)