package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.debug

import com.aiuta.fashionsdk.configuration.debug.AiutaValidationPolicy
import com.aiuta.flutter.fashionsdk.domain.models.configuration.debug.FlutterAiutaValidationPolicy

fun FlutterAiutaValidationPolicy.toNative(): AiutaValidationPolicy {
    return when (this) {
        FlutterAiutaValidationPolicy.IGNORE -> AiutaValidationPolicy.IGNORE
        FlutterAiutaValidationPolicy.WARNING -> AiutaValidationPolicy.WARNING
        FlutterAiutaValidationPolicy.FATAL -> AiutaValidationPolicy.FATAL
    }
}