package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.color

import androidx.compose.ui.graphics.Color
import com.aiuta.fashionsdk.configuration.ui.theme.color.AiutaColorTheme
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.color.FlutterAiutaColorTheme

fun FlutterAiutaColorTheme.toNative(): AiutaColorTheme {
    return object : AiutaColorTheme {
        override val brand = this@toNative.brand.toColor()
        override val primary = this@toNative.primary.toColor()
        override val secondary = this@toNative.secondary.toColor()
        override val onDark: Color = this@toNative.onDark.toColor()
        override val onLight: Color = this@toNative.onLight.toColor()
        override val background: Color = this@toNative.background.toColor()
        override val screen: Color = this@toNative.screen.toColor()
        override val neutral: Color = this@toNative.neutral.toColor()
        override val border: Color = this@toNative.border.toColor()
        override val outline: Color = this@toNative.outline.toColor()
    }
}