package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.indicator

import com.aiuta.fashionsdk.configuration.ui.theme.indicator.AiutaActivityIndicatorTheme
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.indicator.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.indicator.colors.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.indicator.settings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.indicator.FlutterAiutaActivityIndicatorTheme

fun FlutterAiutaActivityIndicatorTheme.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaActivityIndicatorTheme {
    return AiutaActivityIndicatorTheme(
        icons = icons.toNative(resourceScope),
        colors = colors.toNative(),
        settings = settings.toNative()
    )
}