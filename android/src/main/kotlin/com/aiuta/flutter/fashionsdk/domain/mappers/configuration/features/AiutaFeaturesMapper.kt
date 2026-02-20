package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features

import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.features.AiutaFeatures
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.FlutterAiutaFeatures
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.welcome.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.share.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.wishlist.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaFeatures.toNative(
    resourceScope: AiutaResourceMapperScope,
    fontFamily: FontFamily?,
): AiutaFeatures {
    return AiutaFeatures(
        welcomeScreen = welcomeScreen?.toNative(
            resourceScope = resourceScope,
            fontFamily = fontFamily,
        ),
        onboarding = onboarding?.toNative(
            resourceScope = resourceScope,
        ),
        consent = consent?.toNative(
            resourceScope = resourceScope,
        ),
        imagePicker = imagePicker.toNative(
            resourceScope = resourceScope,
        ),
        tryOn = tryOn.toNative(
            resourceScope = resourceScope,
            fontFamily = fontFamily,
        ),
        share = share?.toNative(
            resourceScope = resourceScope,
        ),
        wishlist = wishlist?.toNative(
            resourceScope = resourceScope,
        ),
        // SizeFit not support on Flutter
        sizeFit = null,
    )
}