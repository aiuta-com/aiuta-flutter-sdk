package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.wishlist

import com.aiuta.fashionsdk.configuration.features.wishlist.AiutaWishlistFeature
import com.aiuta.flutter.fashionsdk.domain.listeners.actions.FlutterActionHandler
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.wishlist.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.wishlist.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterAiutaBaseDataProviderBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterAiutaBaseDataProviderCustom
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.FlutterAiutaWishlistFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaWishlistFeature.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaWishlistFeature {
    return AiutaWishlistFeature(
        icons = icons.toNative(resourceScope),
        strings = strings.toNative(),
        dataProvider = when (dataProvider) {
            FlutterAiutaBaseDataProviderBuiltIn -> error("Built-in data provider is not supported for Wishlist feature")
            FlutterAiutaBaseDataProviderCustom -> FlutterActionHandler
        }
    )
}