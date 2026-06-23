package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.shoes

import com.aiuta.fashionsdk.configuration.mode.shoes.AiutaShoesMode
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.shoes.onboarding.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.mode.shoes.picker.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.models.configuration.mode.shoes.FlutterAiutaShoesMode

fun FlutterAiutaShoesMode.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaShoesMode {
    return AiutaShoesMode(
        onboardingShoesPage = onboardingShoesPage.toNative(resourceScope),
        imagePicker = imagePicker.toNative(resourceScope),
    )
}
