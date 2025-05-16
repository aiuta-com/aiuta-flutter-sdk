package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base

import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaBaseDataProvider {
    companion object {
        const val TYPE_BUILT_IN= "builtIn"
        const val TYPE_CUSTOM = "custom"
    }
}

@Serializable
@SerialName(FlutterAiutaBaseDataProvider.TYPE_BUILT_IN)
object FlutterAiutaBaseDataProviderBuiltIn : FlutterAiutaBaseDataProvider

@Serializable
@SerialName(FlutterAiutaBaseDataProvider.TYPE_CUSTOM)
object FlutterAiutaBaseDataProviderCustom: FlutterAiutaBaseDataProvider
