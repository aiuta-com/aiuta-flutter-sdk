package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.images

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaWelcomeScreenImages

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
class FlutterAiutaWelcomeScreenImagesCustom(
    @SerialName("welcomeBackground")
    val welcomeBackgroundPath: String
) : FlutterAiutaWelcomeScreenImages