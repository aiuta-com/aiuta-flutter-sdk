package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.other.strings

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTryOnFeedbackOtherStrings(
    @SerialName("otherFeedbackTitle")
    val otherFeedbackTitle: String,

    @SerialName("otherFeedbackButtonSend")
    val otherFeedbackButtonSend: String,

    @SerialName("otherFeedbackButtonCancel")
    val otherFeedbackButtonCancel: String,

    @SerialName("otherFeedbackOptionOther")
    val otherFeedbackOptionOther: String
)