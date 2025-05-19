package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.sheet.toggles

import com.aiuta.fashionsdk.configuration.ui.theme.sheet.toggles.AiutaBottomSheetThemeToggles
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.bottomsheet.toggles.FlutterAiutaBottomSheetToggles

fun FlutterAiutaBottomSheetToggles.toNative(): AiutaBottomSheetThemeToggles {
    return object : AiutaBottomSheetThemeToggles {
        override val extendDelimitersToTheRight = this@toNative.extendDelimitersToTheRight
        override val extendDelimitersToTheLeft = this@toNative.extendDelimitersToTheLeft
    }
}