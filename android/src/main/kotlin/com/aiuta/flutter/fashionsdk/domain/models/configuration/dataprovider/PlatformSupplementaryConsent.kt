package com.aiuta.flutter.fashionsdk.domain.models.configuration.dataprovider

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Deprecated("Migrate to flutter models")
@Serializable
class PlatformSupplementaryConsent(
    @SerialName("consentText")
    public val consentText: String,
    @SerialName("isObtained")
    public val isObtained: Boolean,
)