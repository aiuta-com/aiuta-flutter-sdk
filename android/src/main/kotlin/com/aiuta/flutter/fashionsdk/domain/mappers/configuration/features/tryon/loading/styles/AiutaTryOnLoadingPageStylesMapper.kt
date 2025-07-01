package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.loading.styles

import com.aiuta.fashionsdk.configuration.features.tryon.loading.styles.AiutaTryOnLoadingPageFeatureStyles
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.base.toNative
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.color.toColor
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.styles.FlutterAiutaTryOnLoadingPageStyles

fun FlutterAiutaTryOnLoadingPageStyles.toNative(): AiutaTryOnLoadingPageFeatureStyles {
    return object : AiutaTryOnLoadingPageFeatureStyles {
        override val loadingStatusBackgroundGradient =
            this@toNative.loadingStatusBackgroundGradient?.map { it.toColor() }
        override val loadingStatusStyle = this@toNative.loadingStatusStyle.toNative()
    }
}