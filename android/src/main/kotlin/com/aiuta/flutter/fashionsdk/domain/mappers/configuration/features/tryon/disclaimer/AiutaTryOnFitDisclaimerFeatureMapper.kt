package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.disclaimer

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.tryon.disclaimer.AiutaTryOnFitDisclaimerFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.disclaimer.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.disclaimer.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.FlutterAiutaTryOnFitDisclaimerFeature

fun FlutterAiutaTryOnFitDisclaimerFeature.toNative(
    assetManager: AssetManager
): AiutaTryOnFitDisclaimerFeature {
    return AiutaTryOnFitDisclaimerFeature(
        icons = icons.toNative(assetManager),
        strings = strings.toNative()
    )
}