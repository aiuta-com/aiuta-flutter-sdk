package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.welcome

import android.content.res.AssetManager
import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.features.welcome.AiutaWelcomeScreenFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.FlutterAiutaWelcomeScreenFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.welcome.images.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.welcome.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.welcome.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.welcome.typography.toNative

fun FlutterAiutaWelcomeScreenFeature.toNative(
    assetManager: AssetManager,
    fontFamily: FontFamily?,
): AiutaWelcomeScreenFeature {
    return AiutaWelcomeScreenFeature(
        images = images.toNative(assetManager),
        icons = icons.toNative(assetManager),
        strings = strings.toNative(),
        typography = typography.toNative(fontFamily)
    )
}