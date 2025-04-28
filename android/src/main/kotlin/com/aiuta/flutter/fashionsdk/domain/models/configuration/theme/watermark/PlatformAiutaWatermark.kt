package com.aiuta.flutter.fashionsdk.domain.models.configuration.theme.watermark

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Deprecated("Migrate to flutter models")
@Serializable
class PlatformAiutaWatermark(
    @SerialName("path")
    val path: String
)