package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.bottomsheet

import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.bottomsheet.grabber.FlutterAiutaBottomSheetGrabber
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.bottomsheet.shapes.FlutterAiutaBottomSheetShapes
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.bottomsheet.toggles.FlutterAiutaBottomSheetToggles
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaBottomSheetTheme(
    @SerialName("shapes")
    val shapes: FlutterAiutaBottomSheetShapes,

    @SerialName("grabber")
    val grabber: FlutterAiutaBottomSheetGrabber,

    @SerialName("toggles")
    val toggles: FlutterAiutaBottomSheetToggles
)