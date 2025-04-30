package com.aiuta.flutter.fashionsdk.domain.models.configuration.debug

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaDebugSettings(
    @SerialName("isLoggingEnabled")
    val isLoggingEnabled: Boolean,

    @SerialName("emptyStringsPolicy")
    val emptyStringsPolicy: FlutterAiutaValidationPolicy,

    @SerialName("unavailableResourcesPolicy")
    val unavailableResourcesPolicy: FlutterAiutaValidationPolicy,

    @SerialName("infoPlistDescriptionsPolicy")
    val infoPlistDescriptionsPolicy: FlutterAiutaValidationPolicy,

    @SerialName("listSizePolicy")
    val listSizePolicy: FlutterAiutaValidationPolicy
)