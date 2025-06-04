package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.welcome

import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.features.welcome.AiutaWelcomeScreenFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.FlutterAiutaWelcomeScreenFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.welcome.images.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.welcome.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.welcome.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.welcome.typography.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaWelcomeScreenFeature.toNative(
    resourceScope: AiutaResourceMapperScope,
    fontFamily: FontFamily?,
): AiutaWelcomeScreenFeature {
    return AiutaWelcomeScreenFeature(
        images = images.toNative(resourceScope),
        icons = icons.toNative(resourceScope),
        strings = strings.toNative(),
        typography = typography.toNative(fontFamily)
    )
}