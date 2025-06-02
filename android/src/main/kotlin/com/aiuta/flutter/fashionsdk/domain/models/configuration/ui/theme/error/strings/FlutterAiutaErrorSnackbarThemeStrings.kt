package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.error.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaErrorSnackbarThemeStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaErrorSnackbarThemeStringsBuiltIn : FlutterAiutaErrorSnackbarThemeStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaErrorSnackbarThemeStringsCustom(
    @SerialName("defaultErrorMessage")
    val defaultErrorMessage: String,

    @SerialName("tryAgainButton")
    val tryAgainButton: String
) : FlutterAiutaErrorSnackbarThemeStrings