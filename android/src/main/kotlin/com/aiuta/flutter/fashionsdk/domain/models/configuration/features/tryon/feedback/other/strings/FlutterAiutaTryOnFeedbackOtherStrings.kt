package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.other.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaTryOnFeedbackOtherStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaTryOnFeedbackOtherStringsBuiltIn : FlutterAiutaTryOnFeedbackOtherStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaTryOnFeedbackOtherStringsCustom(
    @SerialName("otherFeedbackTitle")
    val otherFeedbackTitle: String,

    @SerialName("otherFeedbackButtonSend")
    val otherFeedbackButtonSend: String,

    @SerialName("otherFeedbackButtonCancel")
    val otherFeedbackButtonCancel: String,

    @SerialName("otherFeedbackOptionOther")
    val otherFeedbackOptionOther: String
) : FlutterAiutaTryOnFeedbackOtherStrings