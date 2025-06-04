package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.share

import com.aiuta.fashionsdk.configuration.features.share.AiutaShareFeature
import com.aiuta.flutter.fashionsdk.domain.listeners.actions.FlutterDataActionHandler
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.share.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.share.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.share.watermark.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterAiutaBaseDataProviderBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterAiutaBaseDataProviderCustom
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.FlutterAiutaShareFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaShareFeature.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaShareFeature {
    return AiutaShareFeature(
        watermark = watermark?.toNative(resourceScope),
        icons = icons.toNative(resourceScope),
        strings = strings.toNative(),
        dataProvider = when (dataProvider) {
            null -> null
            FlutterAiutaBaseDataProviderCustom -> FlutterDataActionHandler
            FlutterAiutaBaseDataProviderBuiltIn -> error("Not supported share data provider type")
        },
    )
}