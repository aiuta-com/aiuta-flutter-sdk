package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.feedback.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.defaults.icons.features.tryon.feedback.DefaultAiutaTryOnFeedbackFeatureIcons
import com.aiuta.fashionsdk.configuration.features.tryon.feedback.icons.AiutaTryOnFeedbackFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.icons.FlutterAiutaTryOnFeedbackIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.icons.FlutterAiutaTryOnFeedbackIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.icons.FlutterAiutaTryOnFeedbackIconsCustom

fun FlutterAiutaTryOnFeedbackIcons.toNative(
    assetManager: AssetManager
): AiutaTryOnFeedbackFeatureIcons {
    return when (this) {
        is FlutterAiutaTryOnFeedbackIconsBuiltIn -> DefaultAiutaTryOnFeedbackFeatureIcons()
        is FlutterAiutaTryOnFeedbackIconsCustom -> object : AiutaTryOnFeedbackFeatureIcons {
            override val like36 = this@toNative.like36.toNative(assetManager)
            override val dislike36 = this@toNative.dislike36.toNative(assetManager)
            override val gratitude40 = this@toNative.gratitude40.toNative(assetManager)
        }
    }
}