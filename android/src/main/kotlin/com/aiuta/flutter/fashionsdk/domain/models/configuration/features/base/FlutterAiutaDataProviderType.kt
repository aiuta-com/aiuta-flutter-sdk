package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base

import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaBaseDataProvider

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaBaseDataProviderBuiltIn : FlutterAiutaBaseDataProvider

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
object FlutterAiutaBaseDataProviderCustom: FlutterAiutaBaseDataProvider
