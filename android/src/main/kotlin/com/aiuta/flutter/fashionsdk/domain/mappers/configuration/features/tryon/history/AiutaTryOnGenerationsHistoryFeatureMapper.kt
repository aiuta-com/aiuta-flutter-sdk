package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.history

import com.aiuta.fashionsdk.configuration.features.tryon.history.AiutaTryOnGenerationsHistoryFeature
import com.aiuta.fashionsdk.configuration.features.tryon.history.dataprovider.AiutaTryOnGenerationsHistoryFeatureDataProviderBuiltIn
import com.aiuta.flutter.fashionsdk.domain.listeners.actions.FlutterDataActionHandler
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.history.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.history.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterAiutaBaseDataProviderBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterAiutaBaseDataProviderCustom
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.FlutterAiutaTryOnGenerationsHistoryFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaTryOnGenerationsHistoryFeature.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaTryOnGenerationsHistoryFeature {
    return AiutaTryOnGenerationsHistoryFeature(
        icons = icons.toNative(resourceScope),
        strings = strings.toNative(),
        dataProvider = when (dataProvider) {
            FlutterAiutaBaseDataProviderBuiltIn -> AiutaTryOnGenerationsHistoryFeatureDataProviderBuiltIn
            FlutterAiutaBaseDataProviderCustom -> FlutterDataActionHandler
        }
    )
}