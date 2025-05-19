package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.icons.FlutterAiutaWishlistIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.strings.FlutterAiutaWishlistStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaWishlistFeature(
    @SerialName("icons")
    val icons: FlutterAiutaWishlistIcons,

    @SerialName("strings")
    val strings: FlutterAiutaWishlistStrings
)