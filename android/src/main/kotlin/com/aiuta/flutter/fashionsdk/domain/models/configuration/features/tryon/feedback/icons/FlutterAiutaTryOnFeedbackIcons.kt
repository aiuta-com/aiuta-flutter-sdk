package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.icons

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaTryOnFeedbackIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaTryOnFeedbackIconsBuiltIn : FlutterAiutaTryOnFeedbackIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaTryOnFeedbackIconsCustom(
    @SerialName("like36")
    val like36: FlutterAiutaIcon,

    @SerialName("dislike36")
    val dislike36: FlutterAiutaIcon,

    @SerialName("gratitude40")
    val gratitude40: FlutterAiutaIcon
) : FlutterAiutaTryOnFeedbackIcons