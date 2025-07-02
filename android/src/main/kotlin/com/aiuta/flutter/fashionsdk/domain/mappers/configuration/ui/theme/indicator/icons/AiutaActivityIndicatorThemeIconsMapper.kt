package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.indicator.icons

import com.aiuta.fashionsdk.configuration.defaults.icons.theme.indicator.DefaultAiutaActivityIndicatorThemeIcons
import com.aiuta.fashionsdk.configuration.ui.theme.indicator.icons.AiutaActivityIndicatorThemeIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.indicator.icons.FlutterAiutaActivityIndicatorThemeIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.indicator.icons.FlutterAiutaActivityIndicatorThemeIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.indicator.icons.FlutterAiutaActivityIndicatorThemeIconsCustom

fun FlutterAiutaActivityIndicatorThemeIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaActivityIndicatorThemeIcons {
    val defaultIcons = lazy { DefaultAiutaActivityIndicatorThemeIcons() }

    return when (this) {
        is FlutterAiutaActivityIndicatorThemeIconsBuiltIn -> defaultIcons.value
        is FlutterAiutaActivityIndicatorThemeIconsCustom -> resourceScope.withResourceHandling(defaultIcons) {
            object : AiutaActivityIndicatorThemeIcons {
                override val loading14  = createNativeIcon(this@toNative.loading14)
            }
        }
    }
}