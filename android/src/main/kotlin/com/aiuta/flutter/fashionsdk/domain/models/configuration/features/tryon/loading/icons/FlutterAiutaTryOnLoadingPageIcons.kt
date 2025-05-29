package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.icons

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaTryOnLoadingPageIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaTryOnLoadingPageIconsBuiltIn : FlutterAiutaTryOnLoadingPageIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaTryOnLoadingPageIconsCustom(
    @SerialName("loading14")
    val loading14: FlutterAiutaIcon? = null
) : FlutterAiutaTryOnLoadingPageIcons