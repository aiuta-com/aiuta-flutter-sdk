package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.picker.history.styles

import com.aiuta.fashionsdk.configuration.features.picker.history.styles.AiutaImagePickerUploadsHistoryFeatureStyles
import com.aiuta.fashionsdk.configuration.features.styles.AiutaButtonsStyle
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.history.styles.FlutterAiutaImagePickerUploadsHistoryButtonStyle
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.history.styles.FlutterAiutaImagePickerUploadsHistoryStyles

fun FlutterAiutaImagePickerUploadsHistoryStyles.toNative(): AiutaImagePickerUploadsHistoryFeatureStyles {
    return object : AiutaImagePickerUploadsHistoryFeatureStyles {
        override val changePhotoButtonStyle = this@toNative.changePhotoButtonStyle.toNative()
    }
}

fun FlutterAiutaImagePickerUploadsHistoryButtonStyle.toNative(): AiutaButtonsStyle {
    return when (this) {
        FlutterAiutaImagePickerUploadsHistoryButtonStyle.PRIMARY -> AiutaButtonsStyle.PRIMARY
        FlutterAiutaImagePickerUploadsHistoryButtonStyle.BLURRED -> AiutaButtonsStyle.BLURRED
    }
}