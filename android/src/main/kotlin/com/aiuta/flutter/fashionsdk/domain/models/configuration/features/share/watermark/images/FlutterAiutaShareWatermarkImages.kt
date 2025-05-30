package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.watermark.images

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaShareWatermarkImages

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaShareWatermarkImagesBuiltIn : FlutterAiutaShareWatermarkImages

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
class FlutterAiutaShareWatermarkImagesCustom(
    @SerialName("watermark")
    val watermarkPath: String
) : FlutterAiutaShareWatermarkImages