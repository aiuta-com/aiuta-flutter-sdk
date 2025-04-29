package com.aiuta.flutter.fashionsdk.domain.mappers.product

import com.aiuta.fashionsdk.configuration.features.models.product.ProductItem
import com.aiuta.flutter.fashionsdk.domain.models.product.FlutterAiutaProduct
import com.aiuta.flutter.fashionsdk.domain.models.product.FlutterAiutaProductPrice

fun FlutterAiutaProduct.toNative(): ProductItem {
    return ProductItem(
        id = this.id,
        description = this.title,
        imageUrls = this.imagePaths,
        localizedPrice = this.price?.current.orEmpty(),
        localizedOldPrice = this.price?.old,
        store = this.brand,
    )
}

fun ProductItem.toFlutter(): FlutterAiutaProduct {
    return FlutterAiutaProduct(
        id = this.id,
        title = this.description,
        imagePaths = this.imageUrls,
        price = FlutterAiutaProductPrice(
            current = localizedPrice,
            old = localizedOldPrice,
        ),
        brand = this.store,
    )
}