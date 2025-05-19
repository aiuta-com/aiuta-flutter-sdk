package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.label.typography

import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.ui.theme.label.typography.AiutaLabelThemeTypography
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.typography.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.label.typography.FlutterAiutaLabelTypography

fun FlutterAiutaLabelTypography.toNative(fontFamily: FontFamily?): AiutaLabelThemeTypography {
    return object : AiutaLabelThemeTypography {
        override val titleL = this@toNative.titleL.toNative(fontFamily)
        override val titleM = this@toNative.titleM.toNative(fontFamily)
        override val regular = this@toNative.regular.toNative(fontFamily)
        override val subtle = this@toNative.subtle.toNative(fontFamily)
    }
}