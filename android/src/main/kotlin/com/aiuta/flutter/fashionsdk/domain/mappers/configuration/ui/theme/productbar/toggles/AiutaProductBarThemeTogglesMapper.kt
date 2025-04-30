package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.productbar.toggles

import com.aiuta.fashionsdk.configuration.ui.theme.productbar.toggles.AiutaProductBarThemeToggles
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.toggles.FlutterAiutaProductBarToggles

fun FlutterAiutaProductBarToggles.toNative(): AiutaProductBarThemeToggles {
    return object : AiutaProductBarThemeToggles {
        override val applyProductFirstImageExtraPadding = this@toNative.applyProductFirstImageExtraPadding
    }
}