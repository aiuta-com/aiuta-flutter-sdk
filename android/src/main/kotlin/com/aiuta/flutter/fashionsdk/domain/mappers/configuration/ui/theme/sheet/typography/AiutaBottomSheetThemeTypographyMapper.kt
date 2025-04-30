package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.sheet.typography

import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.ui.theme.sheet.typography.AiutaBottomSheetThemeTypography
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.typography.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.bottomsheet.typography.FlutterAiutaBottomSheetTypography

fun FlutterAiutaBottomSheetTypography.toNative(
    fontFamily: FontFamily?
): AiutaBottomSheetThemeTypography {
    return object : AiutaBottomSheetThemeTypography {
        override val iconButton = this@toNative.iconButton.toNative(fontFamily)
        override val chipsButton = this@toNative.chipsButton.toNative(fontFamily)
    }
}