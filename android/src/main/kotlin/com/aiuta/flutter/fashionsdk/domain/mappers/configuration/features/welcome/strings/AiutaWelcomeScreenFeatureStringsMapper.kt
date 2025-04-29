package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.welcome.strings

import com.aiuta.fashionsdk.configuration.features.welcome.strings.AiutaWelcomeScreenFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.welcome.strings.FlutterAiutaWelcomeScreenStrings

fun FlutterAiutaWelcomeScreenStrings.toNative(): AiutaWelcomeScreenFeatureStrings {
    return object : AiutaWelcomeScreenFeatureStrings {
        override val welcomeTitle = this@toNative.welcomeTitle
        override val welcomeDescription = this@toNative.welcomeDescription
        override val welcomeButtonStart = this@toNative.welcomeButtonStart
    }
}