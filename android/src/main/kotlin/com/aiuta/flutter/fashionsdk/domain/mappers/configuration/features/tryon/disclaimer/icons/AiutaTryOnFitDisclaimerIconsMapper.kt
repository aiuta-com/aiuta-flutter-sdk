package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.disclaimer.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.tryon.disclaimer.icons.AiutaTryOnFitDisclaimerFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.icons.FlutterAiutaTryOnFitDisclaimerIcons

fun FlutterAiutaTryOnFitDisclaimerIcons.toNative(
    assetManager: AssetManager
): AiutaTryOnFitDisclaimerFeatureIcons {
    return object : AiutaTryOnFitDisclaimerFeatureIcons {
        override val info20 = this@toNative.info20?.toNative(assetManager)
    }
}