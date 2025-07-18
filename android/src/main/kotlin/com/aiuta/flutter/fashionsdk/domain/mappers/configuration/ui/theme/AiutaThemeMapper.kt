package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme

import androidx.compose.ui.text.font.FontFamily
import com.aiuta.fashionsdk.configuration.ui.theme.AiutaTheme
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.color.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.label.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.image.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.button.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.error.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.pagebar.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.sheet.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.selection.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.productbar.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.powerbar.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaResourceMapperScope
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.indicator.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.FlutterAiutaTheme

fun FlutterAiutaTheme.toNative(
    resourceScope: AiutaResourceMapperScope,
    fontFamily: FontFamily?,
): AiutaTheme {
    return AiutaTheme(
        color = color.toNative(),
        label = label.toNative(
            fontFamily = fontFamily,
        ),
        image = image.toNative(
            resourceScope = resourceScope,
        ),
        button = button.toNative(
            fontFamily = fontFamily
        ),
        pageBar = pageBar.toNative(
            resourceScope = resourceScope,
            fontFamily = fontFamily
        ),
        bottomSheet = bottomSheet.toNative(
            fontFamily = fontFamily
        ),
        activityIndicator = activityIndicator.toNative(
            resourceScope = resourceScope,
        ),
        selectionSnackbar = selectionSnackbar.toNative(
            resourceScope = resourceScope,
        ),
        productBar = productBar.toNative(
            resourceScope = resourceScope,
            fontFamily = fontFamily
        ),
        errorSnackbar = errorSnackbar.toNative(
            resourceScope = resourceScope
        ),
        powerBar = powerBar.toNative()
    )
}