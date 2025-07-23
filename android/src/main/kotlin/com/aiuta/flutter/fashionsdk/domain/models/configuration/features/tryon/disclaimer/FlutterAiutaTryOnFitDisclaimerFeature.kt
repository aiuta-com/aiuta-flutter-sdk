package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.icons.FlutterAiutaTryOnFitDisclaimerIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.strings.FlutterAiutaTryOnFitDisclaimerStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.typography.FlutterAiutaTryOnFitDisclaimerTypography
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTryOnFitDisclaimerFeature(
    @SerialName("icons")
    val icons: FlutterAiutaTryOnFitDisclaimerIcons,

    @SerialName("strings")
    val strings: FlutterAiutaTryOnFitDisclaimerStrings,

    @SerialName("typography")
    val typography: FlutterAiutaTryOnFitDisclaimerTypography,
)