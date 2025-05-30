package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.bottomsheet.typography

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.typography.FlutterAiutaTextStyle
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaBottomSheetTypography

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaBottomSheetTypographyBuiltIn : FlutterAiutaBottomSheetTypography

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaBottomSheetTypographyCustom(
    @SerialName("iconButton")
    val iconButton: FlutterAiutaTextStyle,

    @SerialName("chipsButton")
    val chipsButton: FlutterAiutaTextStyle
) : FlutterAiutaBottomSheetTypography