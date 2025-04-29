package com.aiuta.flutter.fashionsdk.domain.listeners.auth

import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey

sealed interface JWTDataActionKey : FlutterDataActionKey {
    class ResolveJWT: JWTDataActionKey {
        override val key: String = "resolveJwt"
        val PARAMS_JWT= "jwt"
    }
}