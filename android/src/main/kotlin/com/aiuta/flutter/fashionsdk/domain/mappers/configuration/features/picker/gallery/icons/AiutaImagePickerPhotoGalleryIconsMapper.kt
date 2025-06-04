package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.gallery.icons

import com.aiuta.fashionsdk.configuration.defaults.icons.features.selector.gallery.DefaultAiutaImagePickerPhotoGalleryFeatureIcons
import com.aiuta.fashionsdk.configuration.features.picker.gallery.icons.AiutaImagePickerPhotoGalleryFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.gallery.icons.FlutterAiutaImagePickerPhotoGalleryIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.gallery.icons.FlutterAiutaImagePickerPhotoGalleryIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.gallery.icons.FlutterAiutaImagePickerPhotoGalleryIconsCustom
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling

fun FlutterAiutaImagePickerPhotoGalleryIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaImagePickerPhotoGalleryFeatureIcons {
    val defaultImages = lazy { DefaultAiutaImagePickerPhotoGalleryFeatureIcons() }

    return when (this) {
        is FlutterAiutaImagePickerPhotoGalleryIconsBuiltIn -> defaultImages.value
        is FlutterAiutaImagePickerPhotoGalleryIconsCustom -> resourceScope.withResourceHandling(defaultImages) {
            object : AiutaImagePickerPhotoGalleryFeatureIcons {
                override val gallery24 = createNativeIcon(this@toNative.gallery24)
            }
        }
    }
}