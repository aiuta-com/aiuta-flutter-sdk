package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.pagebar

import android.content.res.AssetManager
import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.ui.theme.pagebar.AiutaPageBarTheme
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar.FlutterAiutaPageBarTheme
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.pagebar.typography.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.pagebar.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.pagebar.toggles.toNative

fun FlutterAiutaPageBarTheme.toNative(assetManager: AssetManager, fontFamily: FontFamily?): AiutaPageBarTheme {
    return AiutaPageBarTheme(
        typography = typography.toNative(fontFamily),
        icons = icons.toNative(assetManager),
        toggles = toggles.toNative()
    )
}