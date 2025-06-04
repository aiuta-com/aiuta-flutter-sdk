package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.model

import com.aiuta.fashionsdk.configuration.features.picker.model.AiutaImagePickerPredefinedModelFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.model.data.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.model.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.model.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.FlutterAiutaImagePickerPredefinedModelFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaImagePickerPredefinedModelFeature.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaImagePickerPredefinedModelFeature {
    return AiutaImagePickerPredefinedModelFeature(
        data = data?.toNative(),
        icons = icons.toNative(resourceScope),
        strings = strings.toNative(),
    )
}