package com.aiuta.flutter.fashionsdk.domain.models.error

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Deprecated("Migrate to flutter")
@Serializable
class FlutterAiutaError(
    @SerialName("errorType")
    val errorType: PlatformAiutaErrorType
)