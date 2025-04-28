package com.aiuta.flutter.fashionsdk.domain.models.configuration.dataprovider

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Deprecated("Migrate to flutter models")
@Serializable
class PlatformAiutaHistoryImage(
    @SerialName("id")
    val id: String,

    @SerialName("url")
    val url: String
)