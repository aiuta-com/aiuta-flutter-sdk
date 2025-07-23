package com.aiuta.flutter.fashionsdk.domain.mappers.product

import com.aiuta.fashionsdk.configuration.features.models.product.ProductPrice
import com.aiuta.flutter.fashionsdk.domain.models.product.FlutterAiutaProductPrice

fun FlutterAiutaProductPrice.toNative(): ProductPrice {
    return ProductPrice(
        current = current,
        old = old,
    )
}