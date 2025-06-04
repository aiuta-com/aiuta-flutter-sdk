package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.error.icons

import com.aiuta.fashionsdk.configuration.defaults.icons.theme.error.DefaultAiutaErrorSnackbarThemeIcons
import com.aiuta.fashionsdk.configuration.ui.theme.error.icons.AiutaErrorSnackbarThemeIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.error.icons.FlutterAiutaErrorSnackbarThemeIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.error.icons.FlutterAiutaErrorSnackbarThemeIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.error.icons.FlutterAiutaErrorSnackbarThemeIconsCustom

fun FlutterAiutaErrorSnackbarThemeIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaErrorSnackbarThemeIcons {
    val defaultIcons = lazy { DefaultAiutaErrorSnackbarThemeIcons() }

    return when (this) {
        is FlutterAiutaErrorSnackbarThemeIconsBuiltIn -> defaultIcons.value
        is FlutterAiutaErrorSnackbarThemeIconsCustom -> resourceScope.withResourceHandling(defaultIcons) {
            object : AiutaErrorSnackbarThemeIcons {
                override val error36 = createNativeIcon(this@toNative.error36)
            }
        }
    }
}