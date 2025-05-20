package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.sheet.grabber

import androidx.compose.ui.unit.dp
import com.aiuta.fashionsdk.configuration.ui.theme.sheet.grabber.AiutaBottomSheetThemeGrabber
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.bottomsheet.grabber.FlutterAiutaBottomSheetGrabber

fun FlutterAiutaBottomSheetGrabber.toNative(): AiutaBottomSheetThemeGrabber {
    return object : AiutaBottomSheetThemeGrabber {
        override val width = this@toNative.width.dp
        override val height = this@toNative.height.dp
        override val topPadding = this@toNative.topPadding.dp
    }
}