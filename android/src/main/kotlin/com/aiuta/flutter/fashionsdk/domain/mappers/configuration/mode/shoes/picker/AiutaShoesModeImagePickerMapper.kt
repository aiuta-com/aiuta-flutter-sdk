package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.shoes.picker

import com.aiuta.fashionsdk.configuration.mode.shoes.picker.AiutaShoesModeImagePicker
import com.aiuta.fashionsdk.configuration.mode.shoes.picker.images.AiutaShoesModeImagePickerImages
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.media.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.shoes.picker.model.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.shoes.picker.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.picker.FlutterAiutaShoesModeImagePicker

fun FlutterAiutaShoesModeImagePicker.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaShoesModeImagePicker {
    val nativeMedia = images.toNative(resourceScope)
    return AiutaShoesModeImagePicker(
        predefinedModels = predefinedModels.toNative(),
        images = object : AiutaShoesModeImagePickerImages {
            override val shoesExample = nativeMedia
        },
        strings = strings.toNative(),
    )
}
