package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode

import com.aiuta.fashionsdk.configuration.mode.AiutaModes
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.shoes.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.FlutterAiutaModes

fun FlutterAiutaModes.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaModes {
    return AiutaModes(
        shoes = shoes?.toNative(resourceScope),
    )
}
