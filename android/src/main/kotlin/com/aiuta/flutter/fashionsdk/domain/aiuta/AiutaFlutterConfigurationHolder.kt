package com.aiuta.flutter.fashionsdk.domain.aiuta

import com.aiuta.flutter.fashionsdk.domain.models.configuration.FlutterAiutaConfiguration
import com.aiuta.flutter.fashionsdk.domain.models.product.FlutterAiutaProduct
import com.aiuta.flutter.fashionsdk.utils.json


object AiutaFlutterConfigurationHolder {
    // Keys for arguments
    const val PRODUCT_KEY = "product"
    const val CONFIGURATION_KEY = "configuration"

    private var product: FlutterAiutaProduct? = null

    private var configuration: FlutterAiutaConfiguration? = null

    // Product
    fun setProduct(rawInput: String?) {
        product = setItem(rawInput)
    }

    fun getProduct(): FlutterAiutaProduct {
        return checkNotNull(product) {
            "AiutaFlutterConfigurationHolder: product is not init. Please call setProduct()"
        }
    }

    // Configuration
    fun setFlutterConfiguration(rawInput: String?) {
        configuration = setItem(rawInput)
    }

    fun getFlutterConfiguration(): FlutterAiutaConfiguration {
        return checkNotNull(configuration) {
            "AiutaFlutterConfigurationHolder: configuration is not init. Please call setNativeConfiguration()"
        }
    }

    private inline fun <reified T> setItem(rawInput: String?): T? {
        return rawInput?.let { json.decodeFromString<T>(rawInput) }
    }
}