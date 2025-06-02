package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.button.typography

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.typography.FlutterAiutaTextStyle
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaButtonTypography

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaButtonTypographyBuiltIn : FlutterAiutaButtonTypography

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaButtonTypographyCustom(
    @SerialName("buttonM")
    val buttonM: FlutterAiutaTextStyle,

    @SerialName("buttonS")
    val buttonS: FlutterAiutaTextStyle
) : FlutterAiutaButtonTypography