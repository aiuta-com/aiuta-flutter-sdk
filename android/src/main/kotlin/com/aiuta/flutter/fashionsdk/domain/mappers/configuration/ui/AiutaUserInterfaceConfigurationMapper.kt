package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui

import android.content.res.AssetManager
import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.ui.AiutaUserInterfaceConfiguration
import com.aiuta.flutter.fashionsdk.domain.listeners.ui.AiutaUIHandler
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.FlutterAiutaUserInterfaceConfiguration

fun FlutterAiutaUserInterfaceConfiguration.toNative(
    assetManager: AssetManager,
    fontFamily: FontFamily?
): AiutaUserInterfaceConfiguration {
    return AiutaUserInterfaceConfiguration(
        actions = AiutaUIHandler,
        theme = theme.toNative(
            assetManager = assetManager,
            fontFamily = fontFamily,
        )
    )
}