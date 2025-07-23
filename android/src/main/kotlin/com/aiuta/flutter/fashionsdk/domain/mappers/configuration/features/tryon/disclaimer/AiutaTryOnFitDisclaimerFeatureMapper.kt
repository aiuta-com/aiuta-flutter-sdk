package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.disclaimer

import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.features.tryon.disclaimer.AiutaTryOnFitDisclaimerFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.disclaimer.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.disclaimer.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.disclaimer.typography.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.FlutterAiutaTryOnFitDisclaimerFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaTryOnFitDisclaimerFeature.toNative(
    resourceScope: AiutaResourceMapperScope,
    fontFamily: FontFamily?,
): AiutaTryOnFitDisclaimerFeature {
    return AiutaTryOnFitDisclaimerFeature(
        icons = icons.toNative(resourceScope),
        strings = strings.toNative(),
        typography = typography.toNative(fontFamily),
    )
}