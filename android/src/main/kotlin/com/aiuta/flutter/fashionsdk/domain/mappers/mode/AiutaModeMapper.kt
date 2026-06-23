package com.aiuta.flutter.fashionsdk.domain.mappers.mode

import com.aiuta.fashionsdk.configuration.mode.AiutaMode
import com.aiuta.flutter.fashionsdk.domain.models.mode.FlutterAiutaMode

fun FlutterAiutaMode.toNative(): AiutaMode {
    return when (this) {
        FlutterAiutaMode.general -> AiutaMode.GENERAL
        FlutterAiutaMode.shoes -> AiutaMode.SHOES
    }
}

fun AiutaMode.toFlutter(): FlutterAiutaMode {
    return when (this) {
        AiutaMode.GENERAL -> FlutterAiutaMode.general
        AiutaMode.SHOES -> FlutterAiutaMode.shoes
    }
}

fun flutterModeFromName(name: String): FlutterAiutaMode? {
    return FlutterAiutaMode.entries.firstOrNull { it.name == name }
}
