package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.camera.FlutterAiutaImagePickerCameraFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.gallery.FlutterAiutaImagePickerPhotoGalleryFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.history.FlutterAiutaImagePickerUploadsHistoryFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.images.FlutterAiutaImagePickerImages
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.model.FlutterAiutaImagePickerPredefinedModelFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.protection.FlutterAiutaImagePickerProtectionDisclaimerFeature
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.strings.FlutterAiutaImagePickerStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaImagePickerFeature(
    @SerialName("camera")
    val camera: FlutterAiutaImagePickerCameraFeature? = null,

    @SerialName("photoGallery")
    val photoGallery: FlutterAiutaImagePickerPhotoGalleryFeature,

    @SerialName("predefinedModels")
    val predefinedModels: FlutterAiutaImagePickerPredefinedModelFeature? = null,

    @SerialName("protectionDisclaimer")
    val protectionDisclaimer: FlutterAiutaImagePickerProtectionDisclaimerFeature? = null,

    @SerialName("uploadsHistory")
    val uploadsHistory: FlutterAiutaImagePickerUploadsHistoryFeature? = null,

    @SerialName("images")
    val images: FlutterAiutaImagePickerImages,

    @SerialName("strings")
    val strings: FlutterAiutaImagePickerStrings
)