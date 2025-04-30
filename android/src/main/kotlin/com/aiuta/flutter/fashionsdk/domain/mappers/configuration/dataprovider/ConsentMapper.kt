package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.dataprovider

import com.aiuta.fashionsdk.tryon.compose.domain.models.configuration.dataprovider.SupplementaryConsent
import com.aiuta.flutter.fashionsdk.domain.models.configuration.dataprovider.PlatformSupplementaryConsent

@Deprecated("Migrate to Flutter")
fun SupplementaryConsent.toPlatform(): PlatformSupplementaryConsent {
    return PlatformSupplementaryConsent(
        consentText = consentText,
        isObtained = isObtained,
    )
}