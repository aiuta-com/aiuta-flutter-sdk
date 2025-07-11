package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone

import com.aiuta.fashionsdk.configuration.features.consent.AiutaConsentStandaloneOnboardingPageFeature
import com.aiuta.flutter.fashionsdk.domain.listeners.actions.FlutterDataActionHandler
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.strings.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.icons.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.data.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.consent.standalone.styles.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.FlutterAiutaConsentStandaloneOnboardingPageFeature
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope

fun FlutterAiutaConsentStandaloneOnboardingPageFeature.toNativeStandaloneOnboarding(
    resourceScope: AiutaResourceMapperScope,
): AiutaConsentStandaloneOnboardingPageFeature {
    return AiutaConsentStandaloneOnboardingPageFeature(
        strings = strings.toNative(),
        icons = icons.toNative(resourceScope),
        styles = styles.toNative(),
        data = data.toNative(),
        dataProvider = FlutterDataActionHandler,
    )
}