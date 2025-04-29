package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.pagebar.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.ui.theme.pagebar.icons.AiutaPageBarThemeIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar.icons.FlutterAiutaPageBarIcons

fun FlutterAiutaPageBarIcons.toNative(assetManager: AssetManager): AiutaPageBarThemeIcons {
    return object : AiutaPageBarThemeIcons {
        override val back24 = this@toNative.back24.toNative(assetManager)
        override val close24 = this@toNative.close24.toNative(assetManager)
    }
}