package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.share

import android.content.res.AssetManager
import com.aiuta.fashionsdk.configuration.features.share.AiutaShareFeature
import com.aiuta.flutter.fashionsdk.domain.listeners.actions.FlutterDataActionHandler
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.share.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.share.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.share.watermark.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterAiutaBaseDataProviderBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterAiutaBaseDataProviderCustom
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.FlutterAiutaShareFeature

fun FlutterAiutaShareFeature.toNative(
    assetManager: AssetManager
): AiutaShareFeature {
    return AiutaShareFeature(
        watermark = watermark?.toNative(assetManager),
        icons = icons.toNative(assetManager),
        strings = strings.toNative(),
        dataProvider = when (dataProvider) {
            null -> null
            FlutterAiutaBaseDataProviderCustom -> FlutterDataActionHandler
            FlutterAiutaBaseDataProviderBuiltIn -> error("Not supported share data provider type")
        },
    )
}