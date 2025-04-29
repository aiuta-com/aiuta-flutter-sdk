package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.dataprovider

import com.aiuta.fashionsdk.tryon.compose.domain.models.configuration.dataprovider.AiutaHistoryImage
import com.aiuta.flutter.fashionsdk.domain.models.configuration.dataprovider.PlatformAiutaHistoryImage

@Deprecated("Migrate to Flutter")
fun PlatformAiutaHistoryImage.toNative(): AiutaHistoryImage {
    return AiutaHistoryImage(id = id, url = url)
}
@Deprecated("Migrate to Flutter")
fun AiutaHistoryImage.toPlatform(): PlatformAiutaHistoryImage {
    return PlatformAiutaHistoryImage(id = id, url = url)
}