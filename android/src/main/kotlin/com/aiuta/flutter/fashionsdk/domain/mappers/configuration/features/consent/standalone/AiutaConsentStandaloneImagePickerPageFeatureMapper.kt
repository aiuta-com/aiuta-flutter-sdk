package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.consent.AiutaConsentStandaloneImagePickerPageFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.data.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.styles.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.FlutterAiutaConsentStandaloneImagePickerPageFeature

fun FlutterAiutaConsentStandaloneImagePickerPageFeature.toNativeStandaloneImagePicker(
    assetManager: AssetManager
): AiutaConsentStandaloneImagePickerPageFeature {
    return AiutaConsentStandaloneImagePickerPageFeature(
        strings = strings.toNative(),
        icons = icons.toNative(assetManager),
        styles = styles.toNative(),
        data = data.toNative(),
        dataProvider = TODO("Implement data provider")
    )
}