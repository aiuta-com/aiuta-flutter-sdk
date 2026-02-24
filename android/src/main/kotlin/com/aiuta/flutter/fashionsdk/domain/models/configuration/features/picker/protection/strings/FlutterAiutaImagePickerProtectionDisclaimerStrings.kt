package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.protection.strings

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaImagePickerProtectionDisclaimerStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_BUILT_IN)
object FlutterAiutaImagePickerProtectionDisclaimerStringsBuiltIn : FlutterAiutaImagePickerProtectionDisclaimerStrings

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaImagePickerProtectionDisclaimerStringsCustom(
    @SerialName("protectionDisclaimer")
    val protectionDisclaimer: String
) : FlutterAiutaImagePickerProtectionDisclaimerStrings
