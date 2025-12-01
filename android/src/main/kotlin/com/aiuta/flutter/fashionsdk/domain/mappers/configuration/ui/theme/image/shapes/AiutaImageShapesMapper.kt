package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.image.shapes

import androidx.compose.ui.unit.dp
import com.aiuta.fashionsdk.configuration.ui.theme.image.shapes.AiutaImageThemeShapes
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.image.shapes.FlutterAiutaImageShapes

fun FlutterAiutaImageShapes.toNative(): AiutaImageThemeShapes {
    return object : AiutaImageThemeShapes() {
        override val imageL = this@toNative.imageL.dp
        override val imageM = this@toNative.imageM.dp
        override val imageS = this@toNative.imageS.dp
    }
}