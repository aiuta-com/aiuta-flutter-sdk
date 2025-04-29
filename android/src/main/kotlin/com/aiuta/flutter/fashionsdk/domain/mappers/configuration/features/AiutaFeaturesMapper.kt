package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features

import android.content.res.AssetManager
import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.features.AiutaFeatures
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.FlutterAiutaFeatures
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.welcome.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.toNative

fun FlutterAiutaFeatures.toNative(
    assetManager: AssetManager,
    fontFamily: FontFamily?,
): AiutaFeatures {
    return AiutaFeatures(
        welcomeScreen = welcomeScreen?.toNative(
            assetManager = assetManager,
            fontFamily = fontFamily,
        ),
        onboarding = onboarding?.toNative(
            assetManager = assetManager,
        ),
        consent = consent?.toNative(
            assetManager = assetManager,
        ),
        imagePicker = imagePicker.toNative(
            assetManager = assetManager,
        ),
        tryOn = tryOn.toNative(
            assetManager = assetManager,
        ),
        share = share?.toNative(),
        wishlist = wishlist?.toNative()
    )
}