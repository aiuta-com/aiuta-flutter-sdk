package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.welcome.icons

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.welcome.icons.AiutaWelcomeScreenFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.icons.FlutterAiutaWelcomeScreenIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.icons.FlutterAiutaWelcomeScreenIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.icons.FlutterAiutaWelcomeScreenIconsCustom

fun FlutterAiutaWelcomeScreenIcons.toNative(
    assetManager: AssetManager
): AiutaWelcomeScreenFeatureIcons {
    return when (this) {
        is FlutterAiutaWelcomeScreenIconsBuiltIn -> error("TODO: Need support DefaultAiutaWelcomeScreenFeatureIcons")
        is FlutterAiutaWelcomeScreenIconsCustom -> object : AiutaWelcomeScreenFeatureIcons {
            override val welcome82 = this@toNative.welcome82.toNative(assetManager)
        }
    }
}