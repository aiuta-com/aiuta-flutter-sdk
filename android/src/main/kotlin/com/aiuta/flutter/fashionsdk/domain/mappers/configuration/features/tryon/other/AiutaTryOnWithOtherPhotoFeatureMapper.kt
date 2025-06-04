package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.other

import com.aiuta.fashionsdk.configuration.features.tryon.other.AiutaTryOnWithOtherPhotoFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.other.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.other.FlutterAiutaTryOnWithOtherPhotoFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaTryOnWithOtherPhotoFeature.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaTryOnWithOtherPhotoFeature {
    return AiutaTryOnWithOtherPhotoFeature(
        icons = icons.toNative(resourceScope)
    )
}