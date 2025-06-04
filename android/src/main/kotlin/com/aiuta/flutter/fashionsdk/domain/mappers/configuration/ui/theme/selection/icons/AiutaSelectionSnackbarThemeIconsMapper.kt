package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.selection.icons

import com.aiuta.fashionsdk.configuration.defaults.icons.theme.selection.DefaultAiutaSelectionSnackbarThemeIcons
import com.aiuta.fashionsdk.configuration.ui.theme.selection.icons.AiutaSelectionSnackbarThemeIcons
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.createNativeIcon
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.withResourceHandling
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.selection.icons.FlutterAiutaSelectionSnackbarIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.selection.icons.FlutterAiutaSelectionSnackbarIconsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.selection.icons.FlutterAiutaSelectionSnackbarIconsCustom

fun FlutterAiutaSelectionSnackbarIcons.toNative(
    resourceScope: AiutaResourceMapperScope,
): AiutaSelectionSnackbarThemeIcons {
    val defaultIcons = lazy { DefaultAiutaSelectionSnackbarThemeIcons() }

    return when (this) {
        is FlutterAiutaSelectionSnackbarIconsBuiltIn -> defaultIcons.value
        is FlutterAiutaSelectionSnackbarIconsCustom -> resourceScope.withResourceHandling(defaultIcons) {
            object : AiutaSelectionSnackbarThemeIcons {
                override val trash24 = createNativeIcon(this@toNative.trash24)
                override val check20 = createNativeIcon(this@toNative.check20)
            }
        }
    }
}