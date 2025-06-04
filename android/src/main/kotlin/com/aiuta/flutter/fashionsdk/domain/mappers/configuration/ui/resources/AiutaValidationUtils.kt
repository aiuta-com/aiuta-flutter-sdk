package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources

import com.aiuta.fashionsdk.logger.AiutaLogger
import com.aiuta.fashionsdk.logger.w
import com.aiuta.flutter.fashionsdk.domain.models.configuration.debug.FlutterAiutaValidationPolicy

internal fun onValidationFailed(
    message: String,
    logger: AiutaLogger?,
    policy: FlutterAiutaValidationPolicy,
) {
    when (policy) {
        FlutterAiutaValidationPolicy.IGNORE -> Unit
        FlutterAiutaValidationPolicy.WARNING -> logger?.w("VALIDATION POLICY: $message")
        FlutterAiutaValidationPolicy.FATAL -> error(message)
    }
}