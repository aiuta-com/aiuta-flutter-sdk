package com.aiuta.flutter.fashionsdk.domain.models.configuration.theme.toggles

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Deprecated("Migrate to flutter models")
@Serializable
class PlatformAiutaThemeToggles(
    @SerialName("isOnboardingAppBarExtended")
    val isOnboardingAppBarExtended: Boolean,

    @SerialName("isMainAppbarReversed")
    val isMainAppbarReversed: Boolean,

    @SerialName("isShadowsReduced")
    val isShadowsReduced: Boolean,

    @SerialName("isDelimitersExtended")
    val isDelimitersExtended: Boolean,

    @SerialName("isProductFirstImageExtendedPaddingApplied")
    val isProductFirstImageExtendedPaddingApplied: Boolean,

    @SerialName("isBlurOutlinesEnabled")
    val isBlurOutlinesEnabled: Boolean,
)