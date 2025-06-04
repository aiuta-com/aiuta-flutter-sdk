package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources

import com.aiuta.fashionsdk.compose.resources.drawable.AiutaAndroidDrawable
import com.aiuta.fashionsdk.compose.resources.drawable.AiutaIcon
import com.aiuta.flutter.fashionsdk.domain.assets.AssetsResolver
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaRenderMode

interface AiutaResourceMapperHandlerScope : AiutaResourceMapperScope


// Extensions
// Images
internal fun AiutaResourceMapperHandlerScope.createNativeImage(
    resourcePath: String,
): AiutaAndroidDrawable {
    return AiutaAndroidDrawable(
        resource = AssetsResolver.resolveDrawable(
            assetManager = assetManager,
            path = resourcePath
        ),
    )
}

// Icons
internal fun AiutaResourceMapperHandlerScope.createNativeIcon(
    flutterIcon: FlutterAiutaIcon,
): AiutaIcon {
    return AiutaIcon(
        iconResource = createNativeImage(resourcePath = flutterIcon.path),
        shouldDrawAsIs = flutterIcon.renderMode == FlutterAiutaRenderMode.ORIGINAL
    )
}