package com.aiuta.flutter.fashionsdk.domain.listeners.auth

import com.aiuta.flutter.fashionsdk.domain.listeners.auth.JWTDataActionKey.ResolveJWT
import com.aiuta.flutter.fashionsdk.domain.listeners.base.BaseDataProvider
import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterAiutaAuthAction
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterRequestJWTAction
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.filterNotNull
import kotlinx.coroutines.flow.first
import kotlinx.serialization.json.Json

object AiutaJWTAuthenticationDataProvider: BaseDataProvider() {

    override val handlerKeyChannel: String = "aiutaAuthActionsHandler"
    override val dataActionKeys: List<JWTDataActionKey> by lazy {
        listOf(ResolveJWT())
    }

    private val _jwtFlow: MutableStateFlow<String?> = MutableStateFlow(null)
    private val jwtFlow: Flow<String> = _jwtFlow.filterNotNull()


    suspend fun requestJWT(params: String?): String {
        val action = FlutterRequestJWTAction(params = params)
        sendEvent(Json.encodeToString<FlutterAiutaAuthAction>(action))

        // Await
        return jwtFlow.first().also {
            // Clean flow
            _jwtFlow.value = null
        }
    }

    override fun handleDataActionKey(call: MethodCall, dataActionKey: FlutterDataActionKey) {
        if (dataActionKey !is JWTDataActionKey) return

        when (dataActionKey) {
            is ResolveJWT -> {
                val rawJWT = call.argument<String>(dataActionKey.PARAMS_JWT)
                rawJWT?.let { _jwtFlow.value = it }
            }
        }
    }
}