package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.indicator.colors

import androidx.compose.ui.graphics.Color
import com.aiuta.fashionsdk.configuration.ui.theme.indicator.colors.AiutaActivityIndicatorThemeColors
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.color.toColor
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.indicator.colors.FlutterAiutaActivityIndicatorThemeColors

fun FlutterAiutaActivityIndicatorThemeColors.toNative(): AiutaActivityIndicatorThemeColors {
    return object : AiutaActivityIndicatorThemeColors {
        override val overlay: Color = this@toNative.overlay.toColor()
    }
}