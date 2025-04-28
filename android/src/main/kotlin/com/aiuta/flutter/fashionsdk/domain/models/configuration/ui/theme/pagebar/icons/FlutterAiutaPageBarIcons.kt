package com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.pagebar.icons

import com.aiuta.flutter.fashionsdk.domain.models.resources.FlutterAiutaIcon
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FlutterAiutaPageBarIcons(
    @SerialName("back24")
    val back24: FlutterAiutaIcon,

    @SerialName("close24")
    val close24: FlutterAiutaIcon
)