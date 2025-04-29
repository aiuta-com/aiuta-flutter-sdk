package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.history

import com.aiuta.fashionsdk.configuration.features.picker.history.AiutaImagePickerUploadsHistoryFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.history.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.history.styles.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.history.FlutterAiutaImagePickerUploadsHistoryFeature

fun FlutterAiutaImagePickerUploadsHistoryFeature.toNative(): AiutaImagePickerUploadsHistoryFeature {
    return AiutaImagePickerUploadsHistoryFeature(
        strings = strings.toNative(),
        styles = styles.toNative(),
        dataProvider = TODO("Implement data provider")
    )
}