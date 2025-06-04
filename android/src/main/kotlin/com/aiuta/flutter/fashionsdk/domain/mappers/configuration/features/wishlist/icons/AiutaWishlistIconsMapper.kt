package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.wishlist.icons

import com.aiuta.fashionsdk.configuration.defaults.icons.features.wishlist.DefaultAiutaWishlistFeatureIcons
import com.aiuta.fashionsdk.configuration.features.wishlist.icons.AiutaWishlistFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.icons.FlutterAiutaWishlistIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.icons.FlutterAiutaWishlistIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.wishlist.icons.FlutterAiutaWishlistIconsCustom
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling

fun FlutterAiutaWishlistIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaWishlistFeatureIcons {
    val defaultIcons = lazy { DefaultAiutaWishlistFeatureIcons() }

    return when (this) {
        is FlutterAiutaWishlistIconsBuiltIn -> defaultIcons.value
        is FlutterAiutaWishlistIconsCustom -> resourceScope.withResourceHandling(defaultIcons) {
            object : AiutaWishlistFeatureIcons {
                override val wishlist24 = createNativeIcon(this@toNative.wishlist24)
                override val wishlistFill24 = createNativeIcon(this@toNative.wishlistFill24)
            }
        }
    }
}