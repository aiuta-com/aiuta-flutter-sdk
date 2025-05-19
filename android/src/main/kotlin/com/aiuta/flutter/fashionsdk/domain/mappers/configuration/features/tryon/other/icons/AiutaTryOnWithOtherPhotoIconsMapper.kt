package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.other.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.tryon.other.icons.AiutaTryOnWithOtherPhotoFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.other.icons.FlutterAiutaTryOnWithOtherPhotoIcons

fun FlutterAiutaTryOnWithOtherPhotoIcons.toNative(
    assetManager: AssetManager
): AiutaTryOnWithOtherPhotoFeatureIcons {
    return object : AiutaTryOnWithOtherPhotoFeatureIcons {
        override val changePhoto24 = this@toNative.changePhoto24.toNative(assetManager)
    }
}