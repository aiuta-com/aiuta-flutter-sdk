package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.other

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.other.strings.FlutterAiutaTryOnFeedbackOtherStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTryOnFeedbackOtherFeature(
    @SerialName("strings")
    val strings: FlutterAiutaTryOnFeedbackOtherStrings
)