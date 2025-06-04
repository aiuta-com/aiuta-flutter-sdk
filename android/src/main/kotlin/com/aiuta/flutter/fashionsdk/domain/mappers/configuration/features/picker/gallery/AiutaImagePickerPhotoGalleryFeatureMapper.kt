package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.gallery

import com.aiuta.fashionsdk.configuration.features.picker.gallery.AiutaImagePickerPhotoGalleryFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.gallery.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.gallery.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.gallery.FlutterAiutaImagePickerPhotoGalleryFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaImagePickerPhotoGalleryFeature.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaImagePickerPhotoGalleryFeature {
    return AiutaImagePickerPhotoGalleryFeature(
        icons = icons.toNative(resourceScope),
        strings = strings.toNative()
    )
}