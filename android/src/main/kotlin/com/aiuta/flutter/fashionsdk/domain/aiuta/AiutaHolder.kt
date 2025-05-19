package com.aiuta.flutter.fashionsdk.domain.aiuta

import android.content.Context
import com.aiuta.fashionsdk.Aiuta
import com.aiuta.fashionsdk.aiuta
import com.aiuta.fashionsdk.authentication.ApiKeyAuthenticationStrategy
import com.aiuta.fashionsdk.authentication.JWTAuthenticationStrategy
import com.aiuta.fashionsdk.logger.DebugAiutaLogger
import com.aiuta.flutter.fashionsdk.domain.listeners.auth.AiutaJWTAuthenticationDataProvider
import com.aiuta.flutter.fashionsdk.domain.models.configuration.FlutterAiutaConfiguration
import com.aiuta.flutter.fashionsdk.domain.models.configuration.auth.FlutterApiKeyAuthentication
import com.aiuta.flutter.fashionsdk.domain.models.configuration.auth.FlutterJWTAuthentication

object AiutaHolder {

    private var aiuta: Aiuta? = null

    fun setAiuta(
        context: Context,
        flutterAiutaConfiguration: FlutterAiutaConfiguration
    ) {
        val flutterAuth = flutterAiutaConfiguration.auth

        aiuta = aiuta {
            platformContext = context
            authenticationStrategy = when (flutterAuth) {
                is FlutterApiKeyAuthentication -> ApiKeyAuthenticationStrategy(flutterAuth.apiKey)
                is FlutterJWTAuthentication -> JWTAuthenticationStrategy(
                    getJWT = AiutaJWTAuthenticationDataProvider::requestJWT,
                    subscriptionId = flutterAuth.subscriptionId
                )
            }
            logger = DebugAiutaLogger().takeIf { flutterAiutaConfiguration.debugSettings.isLoggingEnabled }
        }
    }

    fun getAiuta(): Aiuta {
        return checkNotNull(aiuta) {
            "AiutaHolder: aiuta is not init, please call setAiuta()"
        }
    }
}