package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.feedback.other.strings

import com.aiuta.fashionsdk.configuration.features.tryon.feedback.other.strings.AiutaTryOnFeedbackOtherFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.other.strings.FlutterAiutaTryOnFeedbackOtherStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.other.strings.FlutterAiutaTryOnFeedbackOtherStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.other.strings.FlutterAiutaTryOnFeedbackOtherStringsCustom

fun FlutterAiutaTryOnFeedbackOtherStrings.toNative(): AiutaTryOnFeedbackOtherFeatureStrings {
    return when (this) {
        is FlutterAiutaTryOnFeedbackOtherStringsBuiltIn -> AiutaTryOnFeedbackOtherFeatureStrings.Default()
        is FlutterAiutaTryOnFeedbackOtherStringsCustom -> object : AiutaTryOnFeedbackOtherFeatureStrings {
            override val otherFeedbackTitle = this@toNative.otherFeedbackTitle
            override val otherFeedbackButtonSend = this@toNative.otherFeedbackButtonSend
            override val otherFeedbackButtonCancel = this@toNative.otherFeedbackButtonCancel
            override val otherFeedbackOptionOther = this@toNative.otherFeedbackOptionOther
        }
    }
}