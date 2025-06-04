package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.onboarding.bestresults.icons

import com.aiuta.fashionsdk.configuration.features.onboarding.bestresult.icons.AiutaOnboardingBestResultsPageFeatureIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.icons.FlutterAiutaOnboardingBestResultsPageIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.bestresult.icons.FlutterAiutaOnboardingBestResultsPageIconsCustom
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling

fun FlutterAiutaOnboardingBestResultsPageIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaOnboardingBestResultsPageFeatureIcons {
    return when (this) {
        is FlutterAiutaOnboardingBestResultsPageIconsCustom -> resourceScope.withResourceHandling(null) {
            object : AiutaOnboardingBestResultsPageFeatureIcons {
                override val onboardingBestResultsGood24 = createNativeIcon(this@toNative.onboardingBestResultsGood24)
                override val onboardingBestResultsBad24 = createNativeIcon(this@toNative.onboardingBestResultsBad24)
            }
        }
    }
}