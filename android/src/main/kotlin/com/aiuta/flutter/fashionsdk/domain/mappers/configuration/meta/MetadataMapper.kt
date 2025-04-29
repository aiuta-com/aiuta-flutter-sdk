package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.meta

import com.aiuta.fashionsdk.tryon.compose.domain.models.configuration.meta.AiutaMode
import com.aiuta.fashionsdk.tryon.compose.domain.models.configuration.meta.HostMetadata
import com.aiuta.flutter.fashionsdk.domain.models.configuration.PlatformAiutaConfiguration
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.PlatformAiutaMode

@Deprecated("Migrate to Flutter")
fun PlatformAiutaConfiguration.toHostMetadata(): HostMetadata {
    return HostMetadata(
        mode = mode.toAiutaMode()
    )
}

@Deprecated("Migrate to Flutter")
fun PlatformAiutaMode.toAiutaMode(): AiutaMode {
    return when(this) {
        PlatformAiutaMode.FULL_SCREEN -> AiutaMode.FULL_SCREEN
        PlatformAiutaMode.BOTTOM_SHEET -> AiutaMode.BOTTOM_SHEET
        PlatformAiutaMode.PAGE_SHEET -> AiutaMode.BOTTOM_SHEET
    }
}