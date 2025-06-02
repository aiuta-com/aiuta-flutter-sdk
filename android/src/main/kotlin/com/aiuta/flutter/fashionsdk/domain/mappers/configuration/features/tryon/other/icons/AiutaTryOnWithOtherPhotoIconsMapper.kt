package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.other.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.defaults.icons.features.tryon.repicking.DefaultAiutaTryOnWithOtherPhotoFeatureIcons
import com.aiuta.fashionsdk.configuration.features.tryon.other.icons.AiutaTryOnWithOtherPhotoFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.other.icons.FlutterAiutaTryOnWithOtherPhotoIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.other.icons.FlutterAiutaTryOnWithOtherPhotoIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.other.icons.FlutterAiutaTryOnWithOtherPhotoIconsCustom

fun FlutterAiutaTryOnWithOtherPhotoIcons.toNative(
    assetManager: AssetManager
): AiutaTryOnWithOtherPhotoFeatureIcons {
    return when (this) {
        is FlutterAiutaTryOnWithOtherPhotoIconsBuiltIn -> DefaultAiutaTryOnWithOtherPhotoFeatureIcons()
        is FlutterAiutaTryOnWithOtherPhotoIconsCustom -> object : AiutaTryOnWithOtherPhotoFeatureIcons {
            override val changePhoto24 = this@toNative.changePhoto24.toNative(assetManager)
        }
    }
}