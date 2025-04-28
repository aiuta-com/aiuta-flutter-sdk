package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.icons.FlutterAiutaTryOnFeedbackIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.other.FlutterAiutaTryOnFeedbackOtherFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.strings.FlutterAiutaTryOnFeedbackStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTryOnFeedbackFeature(
    @SerialName("otherFeedback")
    val otherFeedback: FlutterAiutaTryOnFeedbackOtherFeature? = null,

    @SerialName("icons")
    val icons: FlutterAiutaTryOnFeedbackIcons,

    @SerialName("strings")
    val strings: FlutterAiutaTryOnFeedbackStrings
)