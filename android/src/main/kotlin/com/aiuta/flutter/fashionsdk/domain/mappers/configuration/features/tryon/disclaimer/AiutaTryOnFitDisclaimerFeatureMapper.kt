package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.disclaimer

import com.aiuta.fashionsdk.configuration.features.tryon.disclaimer.AiutaTryOnFitDisclaimerFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.disclaimer.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.disclaimer.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.FlutterAiutaTryOnFitDisclaimerFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaTryOnFitDisclaimerFeature.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaTryOnFitDisclaimerFeature {
    return AiutaTryOnFitDisclaimerFeature(
        icons = icons.toNative(resourceScope),
        strings = strings.toNative()
    )
}