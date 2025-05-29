package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.model.strings

import com.aiuta.fashionsdk.configuration.features.picker.model.strings.AiutaImagePickerPredefinedModelFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.strings.FlutterAiutaImagePickerPredefinedModelStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.strings.FlutterAiutaImagePickerPredefinedModelStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.strings.FlutterAiutaImagePickerPredefinedModelStringsCustom

fun FlutterAiutaImagePickerPredefinedModelStrings.toNative(): AiutaImagePickerPredefinedModelFeatureStrings {
    return when (this) {
        is FlutterAiutaImagePickerPredefinedModelStringsBuiltIn -> AiutaImagePickerPredefinedModelFeatureStrings.Default()
        is FlutterAiutaImagePickerPredefinedModelStringsCustom -> object : AiutaImagePickerPredefinedModelFeatureStrings {
            override val predefinedModelPageTitle = this@toNative.predefinedModelPageTitle
            override val predefinedModelOr = this@toNative.predefinedModelOr
            override val predefinedModelErrorEmptyModelsList = this@toNative.predefinedModelErrorEmptyModelsList
            override val predefinedModelCategories = this@toNative.predefinedModelCategories
        }
    }
}