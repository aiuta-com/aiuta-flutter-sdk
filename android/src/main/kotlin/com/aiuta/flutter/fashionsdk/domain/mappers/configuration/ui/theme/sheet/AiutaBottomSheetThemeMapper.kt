package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.sheet

import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.ui.theme.sheet.AiutaBottomSheetTheme
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.bottomsheet.FlutterAiutaBottomSheetTheme
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.sheet.typography.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.sheet.shapes.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.sheet.grabber.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.sheet.toggles.toNative

fun FlutterAiutaBottomSheetTheme.toNative(
    fontFamily: FontFamily?
): AiutaBottomSheetTheme {
    return AiutaBottomSheetTheme(
        typography = typography.toNative(fontFamily),
        shapes = shapes.toNative(),
        grabber = grabber.toNative(),
        toggles = toggles.toNative()
    )
}