package com.aiuta.flutter.fashionsdk.domain.aiuta

import com.aiuta.fashionsdk.tryon.compose.domain.models.ProductConfiguration
import com.aiuta.flutter.fashionsdk.domain.mappers.product.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.FlutterAiutaConfiguration
import com.aiuta.flutter.fashionsdk.domain.models.product.FlutterAiutaProduct
import com.aiuta.flutter.fashionsdk.utils.json


object AiutaFlutterConfigurationHolder {
    // Keys for arguments
    const val PRODUCT_KEY = "product"
    const val PRODUCTS_KEY = "products"
    const val CONFIGURATION_KEY = "configuration"

    private var products: List<FlutterAiutaProduct>? = null

    private var configuration: FlutterAiutaConfiguration? = null

    // Products
    fun setProduct(rawInput: String?) {
        val product = setItem<FlutterAiutaProduct>(rawInput)
        products = product?.let { listOf(it) }
    }

    fun setProducts(rawInput: String?) {
        products = rawInput?.let {
            json.decodeFromString<List<FlutterAiutaProduct>>(it)
        }
    }

    fun getNativeProductConfiguration(): ProductConfiguration {
        val productsList = checkNotNull(products) {
            "AiutaFlutterConfigurationHolder: products is not init. Please call setProduct() or setProducts()"
        }.map { it.toNative() }
        return ProductConfiguration(productsList)
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