package com.aiuta.flutter.fashionsdk.domain.aiuta

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.AiutaConfiguration
import com.aiuta.fashionsdk.configuration.aiutaConfiguration
import com.aiuta.flutter.fashionsdk.domain.assets.AssetsResolver
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.debug.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createAiutaResourceMapperScope

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
            debugSettings = flutterConfiguration.debugSettings.toNative()

            val resourceScope = createAiutaResourceMapperScope(
                assetManager = assetManager,
                logger = aiuta?.logger,
                unavailableResourcesPolicy = flutterConfiguration.debugSettings.unavailableResourcesPolicy
            )

            features = flutterConfiguration.features.toNative(
                resourceScope = resourceScope,
                fontFamily = fontFamily,
            )
            userInterface = flutterConfiguration.userInterface.toNative(
                resourceScope = resourceScope,
                fontFamily = fontFamily,
            )
        }
    }

    fun getNativeConfiguration(): AiutaConfiguration {
        return checkNotNull(aiutaConfiguration) {
            "AiutaFlutterConfigurationHolder: configuration is not init. Please call setNativeConfiguration()"
        }
    }
}