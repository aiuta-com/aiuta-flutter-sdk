package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.icons

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaWishlistIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaWishlistIconsBuiltIn : FlutterAiutaWishlistIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaWishlistIconsCustom(
    @SerialName("wishlist24")
    val wishlist24: FlutterAiutaIcon,

    @SerialName("wishlistFill24")
    val wishlistFill24: FlutterAiutaIcon
) : FlutterAiutaWishlistIcons