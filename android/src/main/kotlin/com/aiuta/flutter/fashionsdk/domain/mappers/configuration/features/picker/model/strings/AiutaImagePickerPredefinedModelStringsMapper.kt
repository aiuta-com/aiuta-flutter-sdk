package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.model.strings

import com.aiuta.fashionsdk.configuration.features.picker.model.strings.AiutaImagePickerPredefinedModelFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.strings.FlutterAiutaImagePickerPredefinedModelStrings

fun FlutterAiutaImagePickerPredefinedModelStrings.toNative(): AiutaImagePickerPredefinedModelFeatureStrings {
    return object : AiutaImagePickerPredefinedModelFeatureStrings {
        override val predefinedModelPageTitle = this@toNative.predefinedModelPageTitle
        override val predefinedModelOr = this@toNative.predefinedModelOr
        override val predefinedModelErrorEmptyModelsList = this@toNative.predefinedModelErrorEmptyModelsList
        override val predefinedModelCategories = this@toNative.predefinedModelCategories
    }
}