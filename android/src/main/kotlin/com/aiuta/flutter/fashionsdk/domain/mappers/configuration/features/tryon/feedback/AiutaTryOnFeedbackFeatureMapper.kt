package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.feedback

import com.aiuta.fashionsdk.configuration.features.tryon.feedback.AiutaTryOnFeedbackFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.FlutterAiutaTryOnFeedbackFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.feedback.other.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.feedback.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.feedback.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaTryOnFeedbackFeature.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaTryOnFeedbackFeature {
    return AiutaTryOnFeedbackFeature(
        otherFeedback = otherFeedback?.toNative(),
        icons = icons.toNative(resourceScope),
        strings = strings.toNative()
    )
}