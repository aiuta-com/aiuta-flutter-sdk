package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.button.shapes

import androidx.compose.ui.unit.dp
import com.aiuta.fashionsdk.configuration.ui.theme.button.shapes.AiutaButtonThemeShapes
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.button.shapes.FlutterAiutaButtonShapes

fun FlutterAiutaButtonShapes.toNative(): AiutaButtonThemeShapes {
    return object : AiutaButtonThemeShapes() {
        override val buttonM = this@toNative.buttonM.dp
        override val buttonS = this@toNative.buttonS.dp
    }
}