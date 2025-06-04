package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.other.icons

import com.aiuta.fashionsdk.configuration.defaults.icons.features.tryon.repicking.DefaultAiutaTryOnWithOtherPhotoFeatureIcons
import com.aiuta.fashionsdk.configuration.features.tryon.other.icons.AiutaTryOnWithOtherPhotoFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.other.icons.FlutterAiutaTryOnWithOtherPhotoIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.other.icons.FlutterAiutaTryOnWithOtherPhotoIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.other.icons.FlutterAiutaTryOnWithOtherPhotoIconsCustom
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling

fun FlutterAiutaTryOnWithOtherPhotoIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaTryOnWithOtherPhotoFeatureIcons {
    val defaultIcons = lazy { DefaultAiutaTryOnWithOtherPhotoFeatureIcons() }

    return when (this) {
        is FlutterAiutaTryOnWithOtherPhotoIconsBuiltIn -> defaultIcons.value
        is FlutterAiutaTryOnWithOtherPhotoIconsCustom -> resourceScope.withResourceHandling(
            defaultIcons
        ) {
            object : AiutaTryOnWithOtherPhotoFeatureIcons {
                override val changePhoto24 = createNativeIcon(this@toNative.changePhoto24)
            }
        }
    }
}