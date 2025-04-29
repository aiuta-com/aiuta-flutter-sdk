package com.aiuta.flutter.fashionsdk.domain.mappers.product

import com.aiuta.fashionsdk.configuration.features.models.product.ProductItem
import com.aiuta.fashionsdk.tryon.compose.domain.models.SKUItem
import com.aiuta.flutter.fashionsdk.domain.models.product.FlutterAiutaProduct
import com.aiuta.flutter.fashionsdk.domain.models.product.FlutterAiutaProductPrice
import com.aiuta.flutter.fashionsdk.domain.models.product.PlatformAiutaProduct

@Deprecated("Migrate to Flutter")
fun SKUItem.toPlatformAiutaProduct(): PlatformAiutaProduct {
    return PlatformAiutaProduct(
        skuId = this.skuId,
        catalogName = this.catalogName,
        title = this.description,
        imageUrls = this.imageUrls,
        localizedPrice = this.localizedPrice,
        localizedOldPrice = this.localizedOldPrice,
        brand = this.store,
        additionalShareInfo = this.additionalShareInfo,
        inWishlist = this.inWishlist
    )
}

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