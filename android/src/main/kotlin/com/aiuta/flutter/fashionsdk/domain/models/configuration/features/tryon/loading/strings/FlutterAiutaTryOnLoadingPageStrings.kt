package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaTryOnLoadingPageStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaTryOnLoadingPageStringsBuiltIn : FlutterAiutaTryOnLoadingPageStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaTryOnLoadingPageStringsCustom(
    @SerialName("tryOnLoadingStatusUploadingImage")
    val tryOnLoadingStatusUploadingImage: String,

    @SerialName("tryOnLoadingStatusScanningBody")
    val tryOnLoadingStatusScanningBody: String,

    @SerialName("tryOnLoadingStatusGeneratingOutfit")
    val tryOnLoadingStatusGeneratingOutfit: String
) : FlutterAiutaTryOnLoadingPageStrings