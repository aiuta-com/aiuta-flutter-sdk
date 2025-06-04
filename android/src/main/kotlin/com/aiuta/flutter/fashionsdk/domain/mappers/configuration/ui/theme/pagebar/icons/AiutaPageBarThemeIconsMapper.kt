package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.pagebar.icons

import com.aiuta.fashionsdk.configuration.defaults.icons.theme.pagebar.DefaultAiutaPageBarThemeIcons
import com.aiuta.fashionsdk.configuration.ui.theme.pagebar.icons.AiutaPageBarThemeIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar.icons.FlutterAiutaPageBarIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar.icons.FlutterAiutaPageBarIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar.icons.FlutterAiutaPageBarIconsCustom

fun FlutterAiutaPageBarIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaPageBarThemeIcons {
    val defaultIcons = lazy { DefaultAiutaPageBarThemeIcons() }

    return when (this) {
        is FlutterAiutaPageBarIconsBuiltIn -> defaultIcons.value
        is FlutterAiutaPageBarIconsCustom -> resourceScope.withResourceHandling(defaultIcons) {
            object : AiutaPageBarThemeIcons {
                override val back24 = createNativeIcon(this@toNative.back24)
                override val close24 = createNativeIcon(this@toNative.close24)
            }
        }
    }
}