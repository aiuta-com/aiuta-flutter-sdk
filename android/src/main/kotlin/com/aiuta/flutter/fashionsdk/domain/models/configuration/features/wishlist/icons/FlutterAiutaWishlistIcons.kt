package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.icons

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon

@Serializable
data class FlutterAiutaWishlistIcons(
    @SerialName("wishlist24")
    val wishlist24: FlutterAiutaIcon,

    @SerialName("wishlistFill24")
    val wishlistFill24: FlutterAiutaIcon
)