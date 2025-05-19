package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.icons.FlutterAiutaWelcomeScreenIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.images.FlutterAiutaWelcomeScreenImages
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.strings.FlutterAiutaWelcomeScreenStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.typography.FlutterAiutaWelcomeScreenTypography
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaWelcomeScreenFeature(
    @SerialName("images")
    val images: FlutterAiutaWelcomeScreenImages,

    @SerialName("icons")
    val icons: FlutterAiutaWelcomeScreenIcons,

    @SerialName("strings")
    val strings: FlutterAiutaWelcomeScreenStrings,

    @SerialName("typography")
    val typography: FlutterAiutaWelcomeScreenTypography,
)