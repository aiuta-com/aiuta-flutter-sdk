package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.media

import com.aiuta.fashionsdk.compose.resources.media.AiutaMedia
import com.aiuta.fashionsdk.compose.resources.media.AiutaMediaContentScale
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeImage
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.media.FlutterAiutaMedia
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.media.FlutterAiutaMediaContentScale

fun FlutterAiutaMedia.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaMedia {
    return resourceScope.withResourceHandling(null) {
        AiutaMedia(
            imageResource = createNativeImage(this@toNative.image),
            videoSource = this@toNative.videoSource,
            contentScale = this@toNative.contentScale.toNative(),
        )
    }
}

fun FlutterAiutaMediaContentScale.toNative(): AiutaMediaContentScale {
    return when (this) {
        FlutterAiutaMediaContentScale.FIT -> AiutaMediaContentScale.FIT
        FlutterAiutaMediaContentScale.FILL -> AiutaMediaContentScale.FILL
    }
}
