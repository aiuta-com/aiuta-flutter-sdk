package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.sheet

import com.aiuta.fashionsdk.configuration.ui.theme.sheet.AiutaBottomSheetTheme
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.bottomsheet.FlutterAiutaBottomSheetTheme
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.sheet.shapes.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.sheet.grabber.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.sheet.toggles.toNative

fun FlutterAiutaBottomSheetTheme.toNative(): AiutaBottomSheetTheme {
    return AiutaBottomSheetTheme(
        shapes = shapes.toNative(),
        grabber = grabber.toNative(),
        toggles = toggles.toNative()
    )
}