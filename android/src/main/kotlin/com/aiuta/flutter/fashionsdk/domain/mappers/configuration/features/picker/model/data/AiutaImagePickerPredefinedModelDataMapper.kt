package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.model.data

import com.aiuta.fashionsdk.configuration.features.picker.model.data.AiutaImagePickerPredefinedModelFeatureData
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.data.FlutterAiutaImagePickerPredefinedModelData

fun FlutterAiutaImagePickerPredefinedModelData.toNative(): AiutaImagePickerPredefinedModelFeatureData {
    return AiutaImagePickerPredefinedModelFeatureData(
        preferredCategoryId = preferredCategoryId
    )
}