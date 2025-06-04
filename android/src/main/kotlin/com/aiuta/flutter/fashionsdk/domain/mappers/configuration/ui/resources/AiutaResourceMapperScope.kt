package com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources

import android.content.res.AssetManager
import com.aiuta.fashionsdk.logger.AiutaLogger
import com.aiuta.flutter.fashionsdk.domain.models.configuration.debug.FlutterAiutaValidationPolicy

interface AiutaResourceMapperScope {
    val assetManager: AssetManager

    val logger: AiutaLogger?

    val unavailableResourcesPolicy: FlutterAiutaValidationPolicy

    val handlerScope: AiutaResourceMapperHandlerScope
}

// Extensions
internal fun createAiutaResourceMapperScope(
    assetManager: AssetManager,
    logger: AiutaLogger? = null,
    unavailableResourcesPolicy: FlutterAiutaValidationPolicy,
): AiutaResourceMapperScope {
    return object : AiutaResourceMapperScope {
        override val assetManager: AssetManager = assetManager
        override val logger: AiutaLogger? = logger
        override val unavailableResourcesPolicy: FlutterAiutaValidationPolicy = unavailableResourcesPolicy
        override val handlerScope: AiutaResourceMapperHandlerScope by lazy {
            object : AiutaResourceMapperHandlerScope by this {}
        }
    }
}

fun <T> AiutaResourceMapperScope.withResourceHandling(
    default: Lazy<T>?,
    factory: AiutaResourceMapperHandlerScope.() -> T,
): T {
    return try {
        handlerScope.factory()
    } catch (e: AiutaSolveDrawableException) {
        onValidationFailed(
            message = "Failed to resolve resource ${e.resourcePath}. Error: ${e.message}",
            logger = logger,
            policy = unavailableResourcesPolicy,
        )
        default?.value ?: error("No default available for resource ${e.resourcePath}")
    }
}