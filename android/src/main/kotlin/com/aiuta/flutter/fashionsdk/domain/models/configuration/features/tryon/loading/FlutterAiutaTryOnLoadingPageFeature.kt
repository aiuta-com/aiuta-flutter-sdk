package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.strings.FlutterAiutaTryOnLoadingPageStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.styles.FlutterAiutaTryOnLoadingPageStyles
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTryOnLoadingPageFeature(
    @SerialName("strings")
    val strings: FlutterAiutaTryOnLoadingPageStrings,

    @SerialName("styles")
    val styles: FlutterAiutaTryOnLoadingPageStyles
)