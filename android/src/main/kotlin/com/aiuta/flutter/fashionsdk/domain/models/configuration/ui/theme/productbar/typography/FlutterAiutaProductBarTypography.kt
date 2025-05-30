package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.typography

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.typography.FlutterAiutaTextStyle
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaProductBarTypography

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaProductBarTypographyBuiltIn : FlutterAiutaProductBarTypography

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaProductBarTypographyCustom(
    @SerialName("product")
    val product: FlutterAiutaTextStyle,

    @SerialName("brand")
    val brand: FlutterAiutaTextStyle
) : FlutterAiutaProductBarTypography