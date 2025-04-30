package com.aiuta.flutter.fashionsdk.domain.models.product

import com.aiuta.flutter.fashionsdk.domain.models.product.FlutterAiutaProductPrice
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaProduct(
    @SerialName("id")
    val id: String,

    @SerialName("title")
    val title: String,

    @SerialName("brand")
    val brand: String,

    @SerialName("imageUrls")
    val imagePaths: List<String>,

    @SerialName("price")
    val price: FlutterAiutaProductPrice? = null
)