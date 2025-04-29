package com.aiuta.flutter.fashionsdk.domain.aiuta

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.AiutaConfiguration
import com.aiuta.fashionsdk.configuration.aiutaConfiguration
import com.aiuta.flutter.fashionsdk.domain.assets.AssetsResolver
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.debug.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.toNative

object AiutaNativeConfigurationHolder {
    private var aiutaConfiguration: AiutaConfiguration? = null

    // Configuration
    fun setNativeConfiguration(
        assetManager: AssetManager
    ) {
        val flutterConfiguration = AiutaFlutterConfigurationHolder.getFlutterConfiguration()

        val fonts = flutterConfiguration.userInterface.theme.fonts
        val fontFamily = if (fonts.isNotEmpty()) {
            AssetsResolver.resolveFontFamily(
                assetManager = assetManager,
                fonts = fonts,
            )
        } else {
            // Use default family
            null
        }

        aiutaConfiguration = aiutaConfiguration {
            aiuta = AiutaHolder.getAiuta()
            // TODO Add mappers
            debugSettings = flutterConfiguration.debugSettings.toNative()
            features = flutterConfiguration.features
            userInterface = flutterConfiguration.userInterface.toNative(
                assetManager = assetManager,
                fontFamily = fontFamily,
            )
        }
    }

    fun getConfiguration(): AiutaConfiguration {
        return checkNotNull(aiutaConfiguration) {
            "AiutaFlutterConfigurationHolder: configuration is not init. Please call setNativeConfiguration()"
        }
    }
}