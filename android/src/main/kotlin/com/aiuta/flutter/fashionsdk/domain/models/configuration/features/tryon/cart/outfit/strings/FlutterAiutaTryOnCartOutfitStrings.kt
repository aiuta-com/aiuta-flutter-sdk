package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.cart.outfit.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaTryOnCartOutfitStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaTryOnCartOutfitStringsBuiltIn : FlutterAiutaTryOnCartOutfitStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaTryOnCartOutfitStringsCustom(
    @SerialName("addToCartOutfit")
    val addToCartOutfit: String
) : FlutterAiutaTryOnCartOutfitStrings

