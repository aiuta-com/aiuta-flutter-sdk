package com.aiuta.flutter.fashionsdk.domain.models.actions

import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface PlatformAiutaAuthAction {
    companion object {
        const val ACTION_REQUEST_JWT = "requestJwt"
    }
}

@Serializable
@SerialName(PlatformAiutaAuthAction.ACTION_REQUEST_JWT)
class PlatformRequestJWTAction(
    @SerialName("params")
    val params: String? = null
): PlatformAiutaAuthAction