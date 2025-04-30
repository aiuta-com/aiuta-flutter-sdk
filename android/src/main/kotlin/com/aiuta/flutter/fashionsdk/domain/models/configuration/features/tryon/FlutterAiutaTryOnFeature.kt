package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart.FlutterAiutaTryOnCartFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.FlutterAiutaTryOnFitDisclaimerFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.feedback.FlutterAiutaTryOnFeedbackFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.FlutterAiutaTryOnGenerationsHistoryFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.icons.FlutterAiutaTryOnIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.FlutterAiutaTryOnLoadingPageFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.other.FlutterAiutaTryOnWithOtherPhotoFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.strings.FlutterAiutaTryOnStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.styles.FlutterAiutaTryOnStyles
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.toggles.FlutterAiutaTryOnToggles
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.validation.FlutterAiutaTryOnInputImageValidationFeature
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTryOnFeature(
    @SerialName("loadingPage")
    val loadingPage: FlutterAiutaTryOnLoadingPageFeature,

    @SerialName("inputImageValidation")
    val inputImageValidation: FlutterAiutaTryOnInputImageValidationFeature,

    @SerialName("cart")
    val cart: FlutterAiutaTryOnCartFeature,

    @SerialName("fitDisclaimer")
    val fitDisclaimer: FlutterAiutaTryOnFitDisclaimerFeature? = null,

    @SerialName("feedback")
    val feedback: FlutterAiutaTryOnFeedbackFeature? = null,

    @SerialName("generationsHistory")
    val generationsHistory: FlutterAiutaTryOnGenerationsHistoryFeature? = null,

    @SerialName("otherPhoto")
    val otherPhoto: FlutterAiutaTryOnWithOtherPhotoFeature? = null,

    @SerialName("toggles")
    val toggles: FlutterAiutaTryOnToggles,

    @SerialName("icons")
    val icons: FlutterAiutaTryOnIcons,

    @SerialName("strings")
    val strings: FlutterAiutaTryOnStrings,

    @SerialName("styles")
    val styles: FlutterAiutaTryOnStyles
)