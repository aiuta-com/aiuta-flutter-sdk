package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.loading.styles

import com.aiuta.fashionsdk.configuration.features.styles.AiutaButtonsWithOutlineStyle
import com.aiuta.fashionsdk.configuration.features.tryon.loading.styles.AiutaTryOnLoadingPageFeatureStyles
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.color.toColor
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.styles.FlutterAiutaTryOnLoadingPageStyle
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.styles.FlutterAiutaTryOnLoadingPageStyles

fun FlutterAiutaTryOnLoadingPageStyles.toNative(): AiutaTryOnLoadingPageFeatureStyles {
    return object : AiutaTryOnLoadingPageFeatureStyles {
        override val loadingStatusBackgroundGradient =
            this@toNative.loadingStatusBackgroundGradient?.map { it.toColor() }
        override val loadingStatusStyle = this@toNative.loadingStatusStyle.toNative()
    }
}

fun FlutterAiutaTryOnLoadingPageStyle.toNative(): AiutaButtonsWithOutlineStyle {
    return when (this) {
        FlutterAiutaTryOnLoadingPageStyle.PRIMARY -> AiutaButtonsWithOutlineStyle.PRIMARY
        FlutterAiutaTryOnLoadingPageStyle.BLURRED -> AiutaButtonsWithOutlineStyle.BLURRED
        FlutterAiutaTryOnLoadingPageStyle.BLURRED_WITH_OUTLINE -> AiutaButtonsWithOutlineStyle.BLURRED_WITH_OUTLINE
    }
}