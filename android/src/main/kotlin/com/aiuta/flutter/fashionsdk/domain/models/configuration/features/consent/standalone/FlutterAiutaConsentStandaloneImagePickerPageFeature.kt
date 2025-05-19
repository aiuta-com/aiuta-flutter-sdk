package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterAiutaBaseDataProvider
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.data.FlutterAiutaConsentStandaloneData
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.icons.FlutterAiutaConsentStandaloneIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.strings.FlutterAiutaConsentStandaloneStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.styles.FlutterAiutaConsentStandaloneStyles
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
@SerialName(FlutterAiutaConsentFeature.TYPE_STANDALONE_IMAGE_PICKER)
data class FlutterAiutaConsentStandaloneImagePickerPageFeature(
    @SerialName("strings")
    val strings: FlutterAiutaConsentStandaloneStrings,

    @SerialName("icons")
    val icons: FlutterAiutaConsentStandaloneIcons,

    @SerialName("styles")
    val styles: FlutterAiutaConsentStandaloneStyles,

    @SerialName("data")
    val data: FlutterAiutaConsentStandaloneData,

    @SerialName("dataProvider")
    val dataProvider: FlutterAiutaBaseDataProvider,
): FlutterAiutaConsentFeature()