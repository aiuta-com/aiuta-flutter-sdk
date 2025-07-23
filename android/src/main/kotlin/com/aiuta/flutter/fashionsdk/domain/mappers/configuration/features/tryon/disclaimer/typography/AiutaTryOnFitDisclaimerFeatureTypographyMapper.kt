package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.disclaimer.typography

import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.features.tryon.disclaimer.typography.AiutaTryOnFitDisclaimerFeatureTypography
import com.aiuta.fashionsdk.configuration.features.welcome.typography.AiutaWelcomeScreenFeatureTypography
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.typography.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.typography.FlutterAiutaTryOnFitDisclaimerTypography
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.typography.FlutterAiutaTryOnFitDisclaimerTypographyBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.typography.FlutterAiutaTryOnFitDisclaimerTypographyCustom
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.typography.FlutterAiutaWelcomeScreenTypography
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.typography.FlutterAiutaWelcomeScreenTypographyBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.typography.FlutterAiutaWelcomeScreenTypographyCustom

fun FlutterAiutaTryOnFitDisclaimerTypography.toNative(
    fontFamily: FontFamily?
): AiutaTryOnFitDisclaimerFeatureTypography {
    return when (this) {
        is FlutterAiutaTryOnFitDisclaimerTypographyBuiltIn -> AiutaTryOnFitDisclaimerFeatureTypography.Default()
        is FlutterAiutaTryOnFitDisclaimerTypographyCustom -> object : AiutaTryOnFitDisclaimerFeatureTypography {
            override val disclaimer = this@toNative.disclaimer.toNative(fontFamily)
        }
    }
}