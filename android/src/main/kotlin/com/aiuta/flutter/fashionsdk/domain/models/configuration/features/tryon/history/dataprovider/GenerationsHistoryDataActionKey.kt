package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.dataprovider

import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey

sealed interface GenerationsHistoryDataActionKey: FlutterDataActionKey {
    class UpdateGeneratedImages: GenerationsHistoryDataActionKey {
        override val key: String = "updateGeneratedImages"
        val PARAM_GENERATED_IMAGES = "generatedImages"
    }
}