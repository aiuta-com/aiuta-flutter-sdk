package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker

import com.aiuta.fashionsdk.configuration.features.picker.AiutaImagePickerFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.camera.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.gallery.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.model.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.history.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.images.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.protection.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.FlutterAiutaImagePickerFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaImagePickerFeature.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaImagePickerFeature {
    return AiutaImagePickerFeature(
        camera = camera?.toNative(resourceScope),
        photoGallery = photoGallery.toNative(resourceScope),
        predefinedModels = predefinedModels?.toNative(resourceScope),
        protectionDisclaimer = protectionDisclaimer?.toNative(resourceScope),
        uploadsHistory = uploadsHistory?.toNative(),
        images = images.toNative(resourceScope),
        strings = strings.toNative()
    )
}