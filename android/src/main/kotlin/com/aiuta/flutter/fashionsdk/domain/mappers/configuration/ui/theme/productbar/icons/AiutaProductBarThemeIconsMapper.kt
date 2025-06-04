package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.productbar.icons

import com.aiuta.fashionsdk.configuration.defaults.icons.theme.productbar.DefaultAiutaProductBarThemeIcons
import com.aiuta.fashionsdk.configuration.ui.theme.productbar.icons.AiutaProductBarThemeIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.icon.FlutterAiutaProductBarThemeIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.icon.FlutterAiutaProductBarThemeIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.icon.FlutterAiutaProductBarThemeIconsCustom

fun FlutterAiutaProductBarThemeIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaProductBarThemeIcons {
    val defaultIcons = lazy { DefaultAiutaProductBarThemeIcons() }

    return when (this) {
        is FlutterAiutaProductBarThemeIconsBuiltIn -> defaultIcons.value
        is FlutterAiutaProductBarThemeIconsCustom -> resourceScope.withResourceHandling(defaultIcons) {
            object : AiutaProductBarThemeIcons {
                override val arrow16 = createNativeIcon(this@toNative.arrow16)
            }
        }
    }
}