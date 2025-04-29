package com.aiuta.flutter.fashionsdk.domain.aiuta

import com.aiuta.fashionsdk.configuration.AiutaConfiguration
import com.aiuta.fashionsdk.configuration.aiutaConfiguration

object AiutaNativeConfigurationHolder {
    private var aiutaConfiguration: AiutaConfiguration? = null

    // Configuration
    fun setNativeConfiguration() {
        val flutterConfiguration = AiutaFlutterConfigurationHolder.getFlutterConfiguration()

        aiutaConfiguration = aiutaConfiguration {
            aiuta = aiuta
            // TODO Add mappers
//            debugSettings = flutterConfiguration.debugSettings
//            features = flutterConfiguration.features
//            userInterface = flutterConfiguration.userInterface
        }
    }

    fun getConfiguration(): AiutaConfiguration {
        return checkNotNull(aiutaConfiguration) {
            "AiutaFlutterConfigurationHolder: configuration is not init. Please call setNativeConfiguration()"
        }
    }
}