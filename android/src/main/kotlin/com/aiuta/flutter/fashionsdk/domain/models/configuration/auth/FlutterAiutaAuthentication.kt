package com.aiuta.flutter.fashionsdk.domain.models.configuration.auth

import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("mode")
sealed class FlutterAiutaAuthentication {

    companion object {
        const val TYPE_JWT = "jwt"
        const val TYPE_API_KEY = "apiKey"
    }
}

@Serializable
@SerialName(FlutterAiutaAuthentication.TYPE_API_KEY)
class FlutterApiKeyAuthentication(
    @SerialName("apiKey")
    val apiKey: String
) : FlutterAiutaAuthentication()

@Serializable
@SerialName(FlutterAiutaAuthentication.TYPE_JWT)
class FlutterJWTAuthentication(
    @SerialName("subscriptionId")
    val subscriptionId: String,
) : FlutterAiutaAuthentication()