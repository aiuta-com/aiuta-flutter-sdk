package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.model.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.defaults.icons.features.selector.model.DefaultAiutaImagePickerPredefinedModelFeatureIcons
import com.aiuta.fashionsdk.configuration.features.picker.model.icons.AiutaImagePickerPredefinedModelFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.icons.FlutterAiutaImagePickerPredefinedModelIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.icons.FlutterAiutaImagePickerPredefinedModelIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.icons.FlutterAiutaImagePickerPredefinedModelIconsCustom

fun FlutterAiutaImagePickerPredefinedModelIcons.toNative(
    assetManager: AssetManager
): AiutaImagePickerPredefinedModelFeatureIcons {
    return when (this) {
        is FlutterAiutaImagePickerPredefinedModelIconsBuiltIn -> DefaultAiutaImagePickerPredefinedModelFeatureIcons()
        is FlutterAiutaImagePickerPredefinedModelIconsCustom -> object : AiutaImagePickerPredefinedModelFeatureIcons {
            override val selectModels24 = this@toNative.selectModels24.toNative(assetManager)
        }
    }
}