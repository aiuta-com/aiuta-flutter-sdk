package com.aiuta.flutter.fashionsdk.domain.aiuta

import android.content.Context
import com.aiuta.fashionsdk.Aiuta
import com.aiuta.fashionsdk.aiuta
import com.aiuta.fashionsdk.authentication.ApiKeyAuthenticationStrategy
import com.aiuta.fashionsdk.authentication.JWTAuthenticationStrategy
import com.aiuta.fashionsdk.logger.DebugAiutaLogger
import com.aiuta.flutter.fashionsdk.domain.listeners.auth.AiutaJWTAuthenticationListener
import com.aiuta.flutter.fashionsdk.domain.listeners.auth.requestJWT
import com.aiuta.flutter.fashionsdk.domain.models.configuration.FlutterAiutaConfiguration
import com.aiuta.flutter.fashionsdk.domain.models.configuration.auth.FlutterApiKeyAuthentication
import com.aiuta.flutter.fashionsdk.domain.models.configuration.auth.FlutterJWTAuthentication
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.filterNotNull
import kotlinx.coroutines.flow.first

object AiutaHolder {

    private var aiuta: Aiuta? = null

    private val _jwtFlow: MutableStateFlow<String?> = MutableStateFlow(null)
    private val jwtFlow: Flow<String> = _jwtFlow.filterNotNull()

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
                    getJWT = { params ->
                        AiutaJWTAuthenticationListener.requestJWT(params)

                        // Await
                        jwtFlow.first().also {
                            // Clean flow
                            _jwtFlow.value = null
                        }
                    },
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

    fun resolveJWT(newJWT: String) {
        _jwtFlow.value = newJWT
    }
}