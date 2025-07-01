package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.styles

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterAiutaComponentStyle
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTryOnLoadingPageStyles(
    @SerialName("loadingStatusBackgroundGradient")
    val loadingStatusBackgroundGradient: List<String>? = null,

    @SerialName("loadingStatusStyle")
    val loadingStatusStyle: FlutterAiutaComponentStyle
)