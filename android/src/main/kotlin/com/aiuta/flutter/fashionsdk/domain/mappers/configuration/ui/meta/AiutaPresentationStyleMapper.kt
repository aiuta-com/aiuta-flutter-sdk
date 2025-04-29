package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.meta

import com.aiuta.fashionsdk.configuration.ui.meta.AiutaMode
import com.aiuta.fashionsdk.configuration.ui.meta.AiutaStyleMetaData
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.meta.FlutterAiutaPresentationStyle

fun FlutterAiutaPresentationStyle.toNative(): AiutaStyleMetaData {
    return object : AiutaStyleMetaData {
        override val mode: AiutaMode = when (this@toNative) {
            FlutterAiutaPresentationStyle.PAGE_SHEET -> AiutaMode.BOTTOM_SHEET
            FlutterAiutaPresentationStyle.BOTTOM_SHEET -> AiutaMode.BOTTOM_SHEET
            FlutterAiutaPresentationStyle.FULL_SCREEN -> AiutaMode.FULL_SCREEN
        }
    }
}