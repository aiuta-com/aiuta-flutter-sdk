package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.data

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
enum class FlutterAiutaConsentType {
    @SerialName("implicitWithoutCheckbox")
    IMPLICIT_WITHOUT_CHECKBOX,

    @SerialName("implicitWithCheckbox")
    IMPLICIT_WITH_CHECKBOX,

    @SerialName("explicitRequired")
    EXPLICIT_REQUIRED,

    @SerialName("explicitOptional")
    EXPLICIT_OPTIONAL
}