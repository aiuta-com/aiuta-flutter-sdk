package com.aiuta.flutter.fashionsdk.domain.mappers.product

import com.aiuta.fashionsdk.configuration.features.models.product.ProductItem
import com.aiuta.fashionsdk.configuration.features.models.product.ProductPrice
import com.aiuta.flutter.fashionsdk.domain.models.product.FlutterAiutaProduct
import com.aiuta.flutter.fashionsdk.domain.models.product.FlutterAiutaProductPrice

fun FlutterAiutaProduct.toNative(): ProductItem {
    return ProductItem(
        id = id,
        title = title,
        brand = brand,
        imageUrls = imagePaths,
        price = price?.toNative(),
    )
}