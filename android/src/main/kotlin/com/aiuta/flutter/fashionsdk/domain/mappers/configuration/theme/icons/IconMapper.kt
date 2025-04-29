package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.theme.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.compose.tokens.icon.AiutaDrawableIcons.AiutaDrawableIcon
import com.aiuta.flutter.fashionsdk.domain.assets.AssetsResolver
import com.aiuta.flutter.fashionsdk.domain.models.configuration.theme.icons.PlatformAiutaIcon

@Deprecated("Migrate to Flutter")
fun PlatformAiutaIcon.toAiutaDrawableIcon(assetManager: AssetManager): AiutaDrawableIcon {
    return AiutaDrawableIcon(
        resource = AssetsResolver.resolveDrawable(
            assetManager = assetManager,
            path = path
        ),
        shouldDrawAsIs = shouldRenderAsIs,
    )
}