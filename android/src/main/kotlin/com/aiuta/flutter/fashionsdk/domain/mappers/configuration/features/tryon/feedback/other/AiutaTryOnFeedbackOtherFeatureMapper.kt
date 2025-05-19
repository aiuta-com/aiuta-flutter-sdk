package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.feedback.other

import com.aiuta.fashionsdk.configuration.features.tryon.feedback.other.AiutaTryOnFeedbackOtherFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.feedback.other.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.other.FlutterAiutaTryOnFeedbackOtherFeature

fun FlutterAiutaTryOnFeedbackOtherFeature.toNative(): AiutaTryOnFeedbackOtherFeature {
    return AiutaTryOnFeedbackOtherFeature(
        strings = strings.toNative()
    )
}