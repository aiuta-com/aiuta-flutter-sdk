package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaWishlistStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaWishlistStringsBuiltIn : FlutterAiutaWishlistStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaWishlistStringsCustom(
    @SerialName("wishlistButtonAdd")
    val wishlistButtonAdd: String
) : FlutterAiutaWishlistStrings