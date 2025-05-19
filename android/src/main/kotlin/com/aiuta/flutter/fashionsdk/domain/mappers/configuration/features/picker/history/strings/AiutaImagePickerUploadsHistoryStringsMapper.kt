package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.history.strings

import com.aiuta.fashionsdk.configuration.features.picker.history.strings.AiutaImagePickerUploadsHistoryFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.history.strings.FlutterAiutaImagePickerUploadsHistoryStrings

fun FlutterAiutaImagePickerUploadsHistoryStrings.toNative(): AiutaImagePickerUploadsHistoryFeatureStrings {
    return object : AiutaImagePickerUploadsHistoryFeatureStrings {
        override val uploadsHistoryButtonNewPhoto = this@toNative.uploadsHistoryButtonNewPhoto
        override val uploadsHistoryTitle = this@toNative.uploadsHistoryTitle
        override val uploadsHistoryButtonChangePhoto = this@toNative.uploadsHistoryButtonChangePhoto
    }
}