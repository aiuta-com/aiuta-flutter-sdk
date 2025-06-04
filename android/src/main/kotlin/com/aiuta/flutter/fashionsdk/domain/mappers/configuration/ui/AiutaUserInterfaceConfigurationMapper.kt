package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui

import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.ui.AiutaUserInterfaceConfiguration
import com.aiuta.flutter.fashionsdk.domain.listeners.ui.AiutaUIHandler
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.FlutterAiutaUserInterfaceConfiguration
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaUserInterfaceConfiguration.toNative(
    resourceScope: AiutaResourceMapperScope,
    fontFamily: FontFamily?
): AiutaUserInterfaceConfiguration {
    return AiutaUserInterfaceConfiguration(
        actions = AiutaUIHandler,
        theme = theme.toNative(
            resourceScope = resourceScope,
            fontFamily = fontFamily,
        )
    )
}