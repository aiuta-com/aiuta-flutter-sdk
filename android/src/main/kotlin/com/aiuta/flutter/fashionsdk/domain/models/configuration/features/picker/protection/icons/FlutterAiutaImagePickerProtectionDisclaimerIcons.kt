package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.protection.icons

import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.base.FlutterCustomizationType
import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaImagePickerProtectionDisclaimerIcons

@Serializable
@SerialName(FlutterCustomizationType.TYPE_CUSTOM)
data class FlutterAiutaImagePickerProtectionDisclaimerIconsCustom(
    @SerialName("protection16")
    val protection16: FlutterAiutaIcon
) : FlutterAiutaImagePickerProtectionDisclaimerIcons
