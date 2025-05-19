package com.aiuta.flutter.fashionsdk.domain.models.configuration

import com.aiuta.flutter.fashionsdk.domain.models.configuration.auth.FlutterAiutaAuthentication
import com.aiuta.flutter.fashionsdk.domain.models.configuration.debug.FlutterAiutaDebugSettings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.FlutterAiutaFeatures
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.FlutterAiutaUserInterfaceConfiguration
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaConfiguration(
    @SerialName("auth")
    val auth: FlutterAiutaAuthentication,

    @SerialName("userInterface")
    val userInterface: FlutterAiutaUserInterfaceConfiguration,

    @SerialName("features")
    val features: FlutterAiutaFeatures,

    @SerialName("debugSettings")
    val debugSettings: FlutterAiutaDebugSettings
)