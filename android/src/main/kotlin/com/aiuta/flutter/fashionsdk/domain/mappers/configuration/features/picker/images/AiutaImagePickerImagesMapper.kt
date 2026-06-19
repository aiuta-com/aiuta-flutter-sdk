package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.images

import com.aiuta.fashionsdk.configuration.defaults.images.features.selector.DefaultAiutaImagePickerFeatureImages
import com.aiuta.fashionsdk.configuration.features.picker.images.AiutaImagePickerFeatureImages
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.media.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.images.FlutterAiutaImagePickerImages
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.images.FlutterAiutaImagePickerImagesBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.images.FlutterAiutaImagePickerImagesCustom

fun FlutterAiutaImagePickerImages.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaImagePickerFeatureImages {
    val defaultImages = lazy { DefaultAiutaImagePickerFeatureImages() }

    return when (this) {
        is FlutterAiutaImagePickerImagesBuiltIn -> defaultImages.value
        is FlutterAiutaImagePickerImagesCustom -> object : AiutaImagePickerFeatureImages {
            override val example = this@toNative.example.toNative(resourceScope)
        }
    }
}
