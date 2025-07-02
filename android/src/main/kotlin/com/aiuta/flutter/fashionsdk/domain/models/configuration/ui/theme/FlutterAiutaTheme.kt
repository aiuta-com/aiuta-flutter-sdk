package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme

import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.bottomsheet.FlutterAiutaBottomSheetTheme
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.button.FlutterAiutaButtonTheme
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.color.FlutterAiutaColorTheme
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.error.FlutterAiutaErrorSnackbarTheme
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.image.FlutterAiutaImageTheme
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.indicator.FlutterAiutaActivityIndicatorTheme
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.label.FlutterAiutaLabelTheme
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar.FlutterAiutaPageBarTheme
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.powerbar.FlutterAiutaPowerBarTheme
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.productbar.FlutterAiutaProductBarTheme
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.selection.FlutterAiutaSelectionSnackbarTheme
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.typography.FlutterAiutaFont
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaTheme(
    @SerialName("color")
    val color: FlutterAiutaColorTheme,

    @SerialName("fonts")
    val fonts: List<FlutterAiutaFont>,

    @SerialName("label")
    val label: FlutterAiutaLabelTheme,

    @SerialName("image")
    val image: FlutterAiutaImageTheme,

    @SerialName("button")
    val button: FlutterAiutaButtonTheme,

    @SerialName("pageBar")
    val pageBar: FlutterAiutaPageBarTheme,

    @SerialName("bottomSheet")
    val bottomSheet: FlutterAiutaBottomSheetTheme,

    @SerialName("activityIndicator")
    val activityIndicator: FlutterAiutaActivityIndicatorTheme,

    @SerialName("selectionSnackbar")
    val selectionSnackbar: FlutterAiutaSelectionSnackbarTheme,

    @SerialName("errorSnackbar")
    val errorSnackbar: FlutterAiutaErrorSnackbarTheme,

    @SerialName("productBar")
    val productBar: FlutterAiutaProductBarTheme,

    @SerialName("powerBar")
    val powerBar: FlutterAiutaPowerBarTheme
)