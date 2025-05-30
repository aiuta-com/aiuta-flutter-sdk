package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.disclaimer.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.defaults.icons.features.tryon.disclaimer.DefaultAiutaTryOnFitDisclaimerFeatureIcons
import com.aiuta.fashionsdk.configuration.features.tryon.disclaimer.icons.AiutaTryOnFitDisclaimerFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.icons.FlutterAiutaTryOnFitDisclaimerIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.icons.FlutterAiutaTryOnFitDisclaimerIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.icons.FlutterAiutaTryOnFitDisclaimerIconsCustom

fun FlutterAiutaTryOnFitDisclaimerIcons.toNative(
    assetManager: AssetManager
): AiutaTryOnFitDisclaimerFeatureIcons {
    return when (this) {
        is FlutterAiutaTryOnFitDisclaimerIconsBuiltIn -> DefaultAiutaTryOnFitDisclaimerFeatureIcons()
        is FlutterAiutaTryOnFitDisclaimerIconsCustom -> object : AiutaTryOnFitDisclaimerFeatureIcons {
            override val info20 = this@toNative.info20?.toNative(assetManager)
        }
    }
}