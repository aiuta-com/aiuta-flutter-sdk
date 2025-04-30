package com.aiuta.flutter.fashionsdk.domain.models.actions

import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed class FlutterAiutaAuthAction {
    companion object {
        const val ACTION_REQUEST_JWT = "requestJwt"
    }
}

@Serializable
@SerialName(FlutterAiutaAuthAction.ACTION_REQUEST_JWT)
class FlutterRequestJWTAction(
    @SerialName("params")
    val params: String? = null
): FlutterAiutaAuthAction()