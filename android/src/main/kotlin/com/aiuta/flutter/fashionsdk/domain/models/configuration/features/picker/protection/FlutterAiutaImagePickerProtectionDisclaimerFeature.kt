package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.protection

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.protection.icons.FlutterAiutaImagePickerProtectionDisclaimerIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.protection.strings.FlutterAiutaImagePickerProtectionDisclaimerStrings
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaImagePickerProtectionDisclaimerFeature(
    @SerialName("icons")
    val icons: FlutterAiutaImagePickerProtectionDisclaimerIcons,

    @SerialName("strings")
    val strings: FlutterAiutaImagePickerProtectionDisclaimerStrings,
)
