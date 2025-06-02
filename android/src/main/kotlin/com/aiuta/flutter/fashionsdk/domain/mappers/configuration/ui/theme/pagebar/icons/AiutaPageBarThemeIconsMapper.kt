package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.pagebar.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.defaults.icons.theme.pagebar.DefaultAiutaPageBarThemeIcons
import com.aiuta.fashionsdk.configuration.ui.theme.pagebar.icons.AiutaPageBarThemeIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar.icons.FlutterAiutaPageBarIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar.icons.FlutterAiutaPageBarIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar.icons.FlutterAiutaPageBarIconsCustom

fun FlutterAiutaPageBarIcons.toNative(assetManager: AssetManager): AiutaPageBarThemeIcons {
    return when (this) {
        is FlutterAiutaPageBarIconsBuiltIn -> DefaultAiutaPageBarThemeIcons()
        is FlutterAiutaPageBarIconsCustom -> object : AiutaPageBarThemeIcons {
            override val back24 = this@toNative.back24.toNative(assetManager)
            override val close24 = this@toNative.close24.toNative(assetManager)
        }
    }
}