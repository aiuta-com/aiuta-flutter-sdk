package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.image.icons

import com.aiuta.fashionsdk.configuration.defaults.icons.theme.image.DefaultAiutaImageThemeIcons
import com.aiuta.fashionsdk.configuration.ui.theme.image.icons.AiutaImageThemeIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.image.icons.FlutterAiutaImageIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.image.icons.FlutterAiutaImageIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.image.icons.FlutterAiutaImageIconsCustom

fun FlutterAiutaImageIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaImageThemeIcons {
    val defaultIcons = lazy { DefaultAiutaImageThemeIcons() }

    return when (this) {
        is FlutterAiutaImageIconsBuiltIn -> defaultIcons.value
        is FlutterAiutaImageIconsCustom -> resourceScope.withResourceHandling(defaultIcons) {
            object : AiutaImageThemeIcons {
                override val error36 = createNativeIcon(this@toNative.imageError36)
            }
        }
    }
}