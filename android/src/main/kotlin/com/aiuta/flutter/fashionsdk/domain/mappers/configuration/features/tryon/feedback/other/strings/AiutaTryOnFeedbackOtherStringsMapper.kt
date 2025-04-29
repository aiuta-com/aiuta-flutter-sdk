package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.feedback.other.strings

import com.aiuta.fashionsdk.configuration.features.tryon.feedback.other.strings.AiutaTryOnFeedbackOtherFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.other.strings.FlutterAiutaTryOnFeedbackOtherStrings

fun FlutterAiutaTryOnFeedbackOtherStrings.toNative(): AiutaTryOnFeedbackOtherFeatureStrings {
    return object : AiutaTryOnFeedbackOtherFeatureStrings {
        override val otherFeedbackTitle = this@toNative.otherFeedbackTitle
        override val otherFeedbackButtonSend = this@toNative.otherFeedbackButtonSend
        override val otherFeedbackButtonCancel = this@toNative.otherFeedbackButtonCancel
        override val otherFeedbackOptionOther = this@toNative.otherFeedbackOptionOther
    }
}