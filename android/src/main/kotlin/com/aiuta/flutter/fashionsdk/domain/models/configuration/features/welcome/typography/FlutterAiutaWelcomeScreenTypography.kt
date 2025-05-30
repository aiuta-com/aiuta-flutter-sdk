package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.typography

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.typography.FlutterAiutaTextStyle
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaWelcomeScreenTypography

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaWelcomeScreenTypographyBuiltIn : FlutterAiutaWelcomeScreenTypography

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaWelcomeScreenTypographyCustom(
    @SerialName("welcomeTitle")
    val welcomeTitle: FlutterAiutaTextStyle,

    @SerialName("welcomeDescription")
    val welcomeDescription: FlutterAiutaTextStyle
) : FlutterAiutaWelcomeScreenTypography