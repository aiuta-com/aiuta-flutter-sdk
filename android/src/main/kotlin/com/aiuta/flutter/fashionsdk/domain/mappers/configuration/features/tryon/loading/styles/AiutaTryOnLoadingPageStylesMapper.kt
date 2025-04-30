package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.loading.styles

import com.aiuta.fashionsdk.configuration.features.styles.AiutaButtonsStyle
import com.aiuta.fashionsdk.configuration.features.tryon.loading.styles.AiutaTryOnLoadingPageFeatureStyles
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.color.toColor
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.styles.FlutterAiutaTryOnLoadingPageStyle
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.styles.FlutterAiutaTryOnLoadingPageStyles

fun FlutterAiutaTryOnLoadingPageStyles.toNative(): AiutaTryOnLoadingPageFeatureStyles {
    return object : AiutaTryOnLoadingPageFeatureStyles {
        override val loadingStatusBackgroundGradient = this@toNative.loadingStatusBackgroundGradient?.map { it.toColor() }
        override val loadingStatusStyle = this@toNative.loadingStatusStyle.toNative()
    }
}

fun FlutterAiutaTryOnLoadingPageStyle.toNative(): AiutaButtonsStyle {
    return when (this) {
        FlutterAiutaTryOnLoadingPageStyle.PRIMARY -> AiutaButtonsStyle.PRIMARY
        FlutterAiutaTryOnLoadingPageStyle.BLURRED -> AiutaButtonsStyle.BLURRED
        FlutterAiutaTryOnLoadingPageStyle.BLURRED_WITH_OUTLINE -> TODO("Add support")
    }
}