package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar

import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar.icons.FlutterAiutaPageBarIcons
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar.toggles.FlutterAiutaPageBarToggles
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar.typography.FlutterAiutaPageBarTypography
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaPageBarTheme(
    @SerialName("typography")
    val typography: FlutterAiutaPageBarTypography,

    @SerialName("icons")
    val icons: FlutterAiutaPageBarIcons,

    @SerialName("toggles")
    val toggles: FlutterAiutaPageBarToggles
)