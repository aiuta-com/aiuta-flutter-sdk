package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.typography

import android.content.res.AssetManager
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.sp
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.typography.FlutterAiutaFont
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.typography.FlutterAiutaFontWeight
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.typography.FlutterAiutaTextStyle

fun FlutterAiutaTextStyle.toNative(
    fontFamily: FontFamily?,
): TextStyle {
    return TextStyle(
        fontFamily = fontFamily,
        fontSize = fontSize.sp,
        fontWeight = fontWeight.toNative(),
        letterSpacing = letterSpacing.sp,
        lineHeight = lineHeight.sp,
    )
}

fun FlutterAiutaFont.toNative(
    resourceKey: String,
    assetManager: AssetManager,
): Font {
    return Font(
        path = resourceKey,
        assetManager = assetManager,
        weight = weight.toNative(),
        style = FontStyle.Normal,
    )
}

fun FlutterAiutaFontWeight.toNative(): FontWeight {
    return when(this) {
        FlutterAiutaFontWeight.THIN -> FontWeight.Thin
        FlutterAiutaFontWeight.EXTRALIGHT -> FontWeight.ExtraLight
        FlutterAiutaFontWeight.LIGHT -> FontWeight.Light
        FlutterAiutaFontWeight.NORMAL -> FontWeight.Normal
        FlutterAiutaFontWeight.MEDIUM -> FontWeight.Medium
        FlutterAiutaFontWeight.SEMIBOLD -> FontWeight.SemiBold
        FlutterAiutaFontWeight.BOLD -> FontWeight.Bold
        FlutterAiutaFontWeight.EXTRABOLD -> FontWeight.ExtraBold
        FlutterAiutaFontWeight.BLACK -> FontWeight.Black
    }
}