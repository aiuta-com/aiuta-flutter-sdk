package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.label.typography

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.typography.FlutterAiutaTextStyle
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaLabelTypography

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaLabelTypographyBuiltIn : FlutterAiutaLabelTypography

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaLabelTypographyCustom(
    @SerialName("titleL")
    val titleL: FlutterAiutaTextStyle,

    @SerialName("titleM")
    val titleM: FlutterAiutaTextStyle,

    @SerialName("regular")
    val regular: FlutterAiutaTextStyle,

    @SerialName("subtle")
    val subtle: FlutterAiutaTextStyle,

    @SerialName("footnote")
    val footnote: FlutterAiutaTextStyle
) : FlutterAiutaLabelTypography