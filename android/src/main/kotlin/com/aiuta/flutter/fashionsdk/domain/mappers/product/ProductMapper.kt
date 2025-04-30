package com.aiuta.flutter.fashionsdk.domain.mappers.product

import com.aiuta.fashionsdk.tryon.compose.domain.models.SKUItem
import com.aiuta.flutter.fashionsdk.domain.models.product.PlatformAiutaProduct

@Deprecated("Migrate to Flutter")
fun PlatformAiutaProduct.toSKUItem(): SKUItem {
    return SKUItem(
        skuId = this.skuId,
        catalogName = this.catalogName,
        description = this.title,
        imageUrls = this.imageUrls,
        localizedPrice = this.localizedPrice.orEmpty(),
        localizedOldPrice = this.localizedOldPrice,
        store = this.brand,
        additionalShareInfo = this.additionalShareInfo,
        inWishlist = this.inWishlist
    )
}

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