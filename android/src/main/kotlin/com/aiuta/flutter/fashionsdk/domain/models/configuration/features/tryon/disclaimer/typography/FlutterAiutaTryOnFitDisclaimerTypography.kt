package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.typography

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.typography.FlutterAiutaTextStyle
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaTryOnFitDisclaimerTypography

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaTryOnFitDisclaimerTypographyBuiltIn : FlutterAiutaTryOnFitDisclaimerTypography

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaTryOnFitDisclaimerTypographyCustom(
    @SerialName("disclaimer")
    val disclaimer: FlutterAiutaTextStyle,
) : FlutterAiutaTryOnFitDisclaimerTypography