package com.aiuta.flutter.fashionsdk.domain.models.images

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
enum class FlutterAiutaHistoryImageType {

    @SerialName("uploaded")
    UPLOADED,

    @SerialName("generated")
    GENERATED,

    @SerialName("inputModel")
    INPUT_MODEL,

    @SerialName("outputModel")
    OUTPUT_MODEL
}