package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.feedback.strings

import com.aiuta.fashionsdk.configuration.features.tryon.feedback.strings.AiutaTryOnFeedbackFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.strings.FlutterAiutaTryOnFeedbackStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.strings.FlutterAiutaTryOnFeedbackStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.strings.FlutterAiutaTryOnFeedbackStringsCustom

fun FlutterAiutaTryOnFeedbackStrings.toNative(): AiutaTryOnFeedbackFeatureStrings {
    return when (this) {
        is FlutterAiutaTryOnFeedbackStringsBuiltIn -> AiutaTryOnFeedbackFeatureStrings.Default()
        is FlutterAiutaTryOnFeedbackStringsCustom -> object : AiutaTryOnFeedbackFeatureStrings {
            override val tryOnFeedbackOptions = this@toNative.feedbackOptions
            override val tryOnFeedbackTitle = this@toNative.feedbackTitle
            override val tryOnFeedbackButtonSkip = this@toNative.feedbackButtonSkip
            override val tryOnFeedbackButtonSend = this@toNative.feedbackButtonSend
            override val tryOnFeedbackGratitudeText = this@toNative.feedbackGratitudeText
        }
    }
}