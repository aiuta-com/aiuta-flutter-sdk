package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar.icons

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaPageBarIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaPageBarIconsBuiltIn : FlutterAiutaPageBarIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaPageBarIconsCustom(
    @SerialName("back24")
    val back24: FlutterAiutaIcon,

    @SerialName("close24")
    val close24: FlutterAiutaIcon
) : FlutterAiutaPageBarIcons