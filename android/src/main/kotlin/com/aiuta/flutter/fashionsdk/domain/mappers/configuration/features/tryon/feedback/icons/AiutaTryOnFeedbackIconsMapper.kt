package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.feedback.icons

import com.aiuta.fashionsdk.configuration.defaults.icons.features.tryon.feedback.DefaultAiutaTryOnFeedbackFeatureIcons
import com.aiuta.fashionsdk.configuration.features.tryon.feedback.icons.AiutaTryOnFeedbackFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.icons.FlutterAiutaTryOnFeedbackIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.icons.FlutterAiutaTryOnFeedbackIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.icons.FlutterAiutaTryOnFeedbackIconsCustom
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling

fun FlutterAiutaTryOnFeedbackIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaTryOnFeedbackFeatureIcons {
    val defaultIcons = lazy { DefaultAiutaTryOnFeedbackFeatureIcons() }

    return when (this) {
        is FlutterAiutaTryOnFeedbackIconsBuiltIn -> defaultIcons.value
        is FlutterAiutaTryOnFeedbackIconsCustom -> resourceScope.withResourceHandling(defaultIcons) {
            object : AiutaTryOnFeedbackFeatureIcons {
                override val like36 = createNativeIcon(this@toNative.like36)
                override val dislike36 = createNativeIcon(this@toNative.dislike36)
                override val gratitude40 = createNativeIcon(this@toNative.gratitude40)
            }
        }
    }
}