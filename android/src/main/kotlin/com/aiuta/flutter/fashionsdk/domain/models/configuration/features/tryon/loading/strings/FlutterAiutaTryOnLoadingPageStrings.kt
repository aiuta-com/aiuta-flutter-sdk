package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.strings

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTryOnLoadingPageStrings(
    @SerialName("tryOnLoadingStatusUploadingImage")
    val tryOnLoadingStatusUploadingImage: String,

    @SerialName("tryOnLoadingStatusScanningBody")
    val tryOnLoadingStatusScanningBody: String,

    @SerialName("tryOnLoadingStatusGeneratingOutfit")
    val tryOnLoadingStatusGeneratingOutfit: String
)