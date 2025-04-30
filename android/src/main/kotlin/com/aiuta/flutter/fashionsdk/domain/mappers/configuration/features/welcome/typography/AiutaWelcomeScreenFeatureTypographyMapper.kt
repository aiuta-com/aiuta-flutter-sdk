package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.welcome.typography

import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.features.welcome.typography.AiutaWelcomeScreenFeatureTypography
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.typography.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.typography.FlutterAiutaWelcomeScreenTypography

fun FlutterAiutaWelcomeScreenTypography.toNative(
    fontFamily: FontFamily?
): AiutaWelcomeScreenFeatureTypography {
    return object : AiutaWelcomeScreenFeatureTypography {
        override val welcomeTitle = this@toNative.welcomeTitle.toNative(fontFamily)
        override val welcomeDescription = this@toNative.welcomeDescription.toNative(fontFamily)
    }
}