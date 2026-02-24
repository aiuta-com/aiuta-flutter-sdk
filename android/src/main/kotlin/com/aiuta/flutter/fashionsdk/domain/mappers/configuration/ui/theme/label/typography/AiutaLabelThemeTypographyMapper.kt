package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.label.typography

import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.ui.theme.label.typography.AiutaLabelThemeTypography
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.typography.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.label.typography.FlutterAiutaLabelTypography
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.label.typography.FlutterAiutaLabelTypographyBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.label.typography.FlutterAiutaLabelTypographyCustom

fun FlutterAiutaLabelTypography.toNative(fontFamily: FontFamily?): AiutaLabelThemeTypography {
    return when (this) {
        is FlutterAiutaLabelTypographyBuiltIn -> AiutaLabelThemeTypography.Default()
        is FlutterAiutaLabelTypographyCustom -> object : AiutaLabelThemeTypography {
            override val titleL = this@toNative.titleL.toNative(fontFamily)
            override val titleM = this@toNative.titleM.toNative(fontFamily)
            override val regular = this@toNative.regular.toNative(fontFamily)
            override val subtle = this@toNative.subtle.toNative(fontFamily)
            override val footnote: TextStyle = this@toNative.footnote.toNative(fontFamily)
        }
    }
}