package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.other

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.tryon.other.AiutaTryOnWithOtherPhotoFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.other.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.other.FlutterAiutaTryOnWithOtherPhotoFeature

fun FlutterAiutaTryOnWithOtherPhotoFeature.toNative(
    assetManager: AssetManager
): AiutaTryOnWithOtherPhotoFeature {
    return AiutaTryOnWithOtherPhotoFeature(
        icons = icons.toNative(assetManager)
    )
}