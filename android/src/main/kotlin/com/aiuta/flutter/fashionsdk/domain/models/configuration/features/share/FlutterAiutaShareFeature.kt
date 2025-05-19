package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterAiutaBaseDataProvider
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.icons.FlutterAiutaShareIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.strings.FlutterAiutaShareStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.watermark.FlutterAiutaShareWatermarkFeature
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaShareFeature(
    @SerialName("watermark")
    val watermark: FlutterAiutaShareWatermarkFeature? = null,

    @SerialName("icons")
    val icons: FlutterAiutaShareIcons,

    @SerialName("strings")
    val strings: FlutterAiutaShareStrings,

    @SerialName("dataProvider")
    val dataProvider: FlutterAiutaBaseDataProvider? = null,
)