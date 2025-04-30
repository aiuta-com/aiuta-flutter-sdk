package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.debug

import com.aiuta.fashionsdk.configuration.debug.AiutaDebugSettings
import com.aiuta.fashionsdk.configuration.debug.AiutaValidationPolicy
import com.aiuta.flutter.fashionsdk.domain.models.configuration.debug.FlutterAiutaDebugSettings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.debug.FlutterAiutaValidationPolicy

fun FlutterAiutaDebugSettings.toNative(): AiutaDebugSettings {
    return AiutaDebugSettings(
        emptyStringsPolicy = emptyStringsPolicy.toNative(),
        listSizePolicy = listSizePolicy.toNative()
    )
}