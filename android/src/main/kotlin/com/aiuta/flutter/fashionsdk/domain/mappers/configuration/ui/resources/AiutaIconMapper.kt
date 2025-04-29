package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources

import android.content.res.AssetManager
import com.aiuta.fashionsdk.compose.resources.drawable.AiutaAndroidDrawable
import com.aiuta.fashionsdk.compose.resources.drawable.AiutaIcon
import com.aiuta.flutter.fashionsdk.domain.assets.AssetsResolver
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaRenderMode

internal fun FlutterAiutaIcon.toNative(assetManager: AssetManager): AiutaIcon {
    return AiutaIcon(
        iconResource = AiutaAndroidDrawable(
            resource = AssetsResolver.resolveDrawable(
                assetManager = assetManager,
                path = path
            )
        ),
        shouldDrawAsIs = renderMode == FlutterAiutaRenderMode.ORIGINAL
    )
}

internal fun String.toNativeImage(assetManager: AssetManager): AiutaAndroidDrawable {
    return AiutaAndroidDrawable(
        resource = AssetsResolver.resolveDrawable(
            assetManager = assetManager,
            path = this
        ),
    )
}