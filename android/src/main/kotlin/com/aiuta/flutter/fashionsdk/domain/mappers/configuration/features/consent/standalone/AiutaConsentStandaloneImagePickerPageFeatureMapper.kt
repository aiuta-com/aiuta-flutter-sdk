package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone

import com.aiuta.fashionsdk.configuration.features.consent.AiutaConsentStandaloneImagePickerPageFeature
import com.aiuta.fashionsdk.configuration.features.consent.standalone.dataprovider.AiutaConsentStandaloneFeatureDataProviderBuiltIn
import com.aiuta.flutter.fashionsdk.domain.listeners.actions.FlutterDataActionHandler
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.data.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.styles.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterAiutaBaseDataProviderBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterAiutaBaseDataProviderCustom
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.FlutterAiutaConsentStandaloneImagePickerPageFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaConsentStandaloneImagePickerPageFeature.toNativeStandaloneImagePicker(
    resourceScope: AiutaResourceMapperScope,
): AiutaConsentStandaloneImagePickerPageFeature {
    return AiutaConsentStandaloneImagePickerPageFeature(
        strings = strings.toNative(),
        icons = icons.toNative(resourceScope),
        styles = styles.toNative(),
        data = data.toNative(),
        dataProvider = when (dataProvider) {
            FlutterAiutaBaseDataProviderBuiltIn -> AiutaConsentStandaloneFeatureDataProviderBuiltIn
            FlutterAiutaBaseDataProviderCustom -> FlutterDataActionHandler
        }
    )
}