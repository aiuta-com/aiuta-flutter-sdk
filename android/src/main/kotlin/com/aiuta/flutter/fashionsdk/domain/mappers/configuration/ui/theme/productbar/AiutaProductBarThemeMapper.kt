package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.productbar

import android.content.res.AssetManager
import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.ui.theme.productbar.AiutaProductBarTheme
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.productbar.prices.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.FlutterAiutaProductBarTheme
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.productbar.typography.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.productbar.toggles.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.productbar.icons.toNative

fun FlutterAiutaProductBarTheme.toNative(
    assetManager: AssetManager,
    fontFamily: FontFamily?,
): AiutaProductBarTheme {
    return AiutaProductBarTheme(
        prices = prices?.toNative(fontFamily),
        typography = typography.toNative(fontFamily),
        toggles = toggles.toNative(),
        icons = icons.toNative(assetManager),
    )
}