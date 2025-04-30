package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.sheet.shapes

import androidx.compose.ui.unit.dp
import com.aiuta.fashionsdk.configuration.ui.theme.sheet.shapes.AiutaBottomSheetThemeShapes
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.bottomsheet.shapes.FlutterAiutaBottomSheetShapes

fun FlutterAiutaBottomSheetShapes.toNative(): AiutaBottomSheetThemeShapes {
    return object : AiutaBottomSheetThemeShapes() {
        override val bottomSheet = this@toNative.bottomSheet.dp
        override val chipsButton = this@toNative.chipsButton.dp
    }
}