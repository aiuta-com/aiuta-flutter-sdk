package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaTryOnFeedbackStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaTryOnFeedbackStringsBuiltIn : FlutterAiutaTryOnFeedbackStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaTryOnFeedbackStringsCustom(
    @SerialName("feedbackOptions")
    val feedbackOptions: List<String>,

    @SerialName("feedbackTitle")
    val feedbackTitle: String,

    @SerialName("feedbackButtonSkip")
    val feedbackButtonSkip: String,

    @SerialName("feedbackButtonSend")
    val feedbackButtonSend: String,

    @SerialName("feedbackGratitudeText")
    val feedbackGratitudeText: String
) : FlutterAiutaTryOnFeedbackStrings