package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.history.dataprovider

import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey

sealed interface UploadsHistoryDataActionKey: FlutterDataActionKey {
    class UpdateUploadedImages: UploadsHistoryDataActionKey {
        override val key: String = "updateUploadedImages"
        val PARAM_UPLOADED_IMAGES = "uploadedImages"
    }
}