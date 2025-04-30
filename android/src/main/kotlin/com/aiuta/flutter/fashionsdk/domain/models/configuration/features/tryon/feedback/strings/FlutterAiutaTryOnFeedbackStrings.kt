package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.strings

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTryOnFeedbackStrings(
    @SerialName("feedbackOptions")
    val feedbackOptions: List<String>,

    @SerialName("feedbackTitle")
    val feedbackTitle: String,

    @SerialName("feedbackButtonSkip")
    val feedbackButtonSkip: String,

    @SerialName("feedbackButtonSend")
    val feedbackButtonSend: String,

    @SerialName("feedbackGratitudeText")
    val feedbackGratitudeText: String
)