package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.model.icons

import com.aiuta.fashionsdk.configuration.defaults.icons.features.selector.model.DefaultAiutaImagePickerPredefinedModelFeatureIcons
import com.aiuta.fashionsdk.configuration.features.picker.model.icons.AiutaImagePickerPredefinedModelFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.icons.FlutterAiutaImagePickerPredefinedModelIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.icons.FlutterAiutaImagePickerPredefinedModelIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.icons.FlutterAiutaImagePickerPredefinedModelIconsCustom
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling

fun FlutterAiutaImagePickerPredefinedModelIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaImagePickerPredefinedModelFeatureIcons {
    val defaultIcons = lazy { DefaultAiutaImagePickerPredefinedModelFeatureIcons() }

    return when (this) {
        is FlutterAiutaImagePickerPredefinedModelIconsBuiltIn -> defaultIcons.value
        is FlutterAiutaImagePickerPredefinedModelIconsCustom -> resourceScope.withResourceHandling(
            defaultIcons
        ) {
            object : AiutaImagePickerPredefinedModelFeatureIcons {
                override val selectModels24 = createNativeIcon(this@toNative.selectModels24)
            }
        }
    }
}