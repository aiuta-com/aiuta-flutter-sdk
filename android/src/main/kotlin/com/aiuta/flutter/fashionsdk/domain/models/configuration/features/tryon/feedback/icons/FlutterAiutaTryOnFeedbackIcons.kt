package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.icons

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon

@Serializable
data class FlutterAiutaTryOnFeedbackIcons(
    @SerialName("like36")
    val like36: FlutterAiutaIcon,

    @SerialName("dislike36")
    val dislike36: FlutterAiutaIcon,

    @SerialName("gratitude40")
    val gratitude40: FlutterAiutaIcon
)