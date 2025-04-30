package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.disclaimer.strings

import com.aiuta.fashionsdk.configuration.features.tryon.disclaimer.strings.AiutaTryOnFitDisclaimerFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.disclaimer.strings.FlutterAiutaTryOnFitDisclaimerStrings

fun FlutterAiutaTryOnFitDisclaimerStrings.toNative(): AiutaTryOnFitDisclaimerFeatureStrings {
    return object : AiutaTryOnFitDisclaimerFeatureStrings {
        override val tryOnFitTitle = this@toNative.fitDisclaimerTitle
        override val tryOnFitDescription = this@toNative.fitDisclaimerDescription
        override val tryOnFitButtonClose = this@toNative.fitDisclaimerButtonClose
    }
}