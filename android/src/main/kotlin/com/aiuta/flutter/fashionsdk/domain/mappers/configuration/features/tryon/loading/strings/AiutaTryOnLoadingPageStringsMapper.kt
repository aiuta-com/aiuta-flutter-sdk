package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.features.tryon.loading.strings

import com.aiuta.fashionsdk.configuration.features.tryon.loading.strings.AiutaTryOnLoadingPageFeatureStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.strings.FlutterAiutaTryOnLoadingPageStrings
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.strings.FlutterAiutaTryOnLoadingPageStringsBuiltIn
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.loading.strings.FlutterAiutaTryOnLoadingPageStringsCustom

fun FlutterAiutaTryOnLoadingPageStrings.toNative(): AiutaTryOnLoadingPageFeatureStrings {
    return when (this) {
        is FlutterAiutaTryOnLoadingPageStringsBuiltIn -> AiutaTryOnLoadingPageFeatureStrings.Default()
        is FlutterAiutaTryOnLoadingPageStringsCustom -> object : AiutaTryOnLoadingPageFeatureStrings {
            override val tryOnLoadingStatusUploadingImage = this@toNative.tryOnLoadingStatusUploadingImage
            override val tryOnLoadingStatusScanningBody = this@toNative.tryOnLoadingStatusScanningBody
            override val tryOnLoadingStatusGeneratingOutfit = this@toNative.tryOnLoadingStatusGeneratingOutfit
        }
    }
}