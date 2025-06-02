package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.howworks.images

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaOnboardingHowItWorksPageImages

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaOnboardingHowItWorksPageImagesBuiltIn : FlutterAiutaOnboardingHowItWorksPageImages

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
class FlutterAiutaOnboardingHowItWorksPageImagesCustom(
    @SerialName("onboardingHowItWorksItems")
    val onboardingHowItWorksItems: List<FlutterOnboardingHowItWorksItem>
) : FlutterAiutaOnboardingHowItWorksPageImages {
    @Serializable
    data class FlutterOnboardingHowItWorksItem(
        @SerialName("itemPhoto")
        val itemPhotoPath: String,

        @SerialName("itemPreview")
        val itemPreviewPath: String
    )
}