package com.aiuta.flutter.fashionsdk.domain.models.error

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Deprecated("Migrate to flutter")
@Serializable
enum class PlatformAiutaErrorType {
    @SerialName("failedDeleteUploadedImages")
    FAILED_DELETE_UPLOADED_IMAGES,

    @SerialName("failedDeleteGeneratedImages")
    FAILED_DELETE_GENERATED_IMAGES,
}