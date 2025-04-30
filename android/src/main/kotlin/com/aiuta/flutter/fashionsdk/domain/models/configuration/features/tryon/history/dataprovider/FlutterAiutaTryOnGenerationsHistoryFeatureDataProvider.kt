package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.dataprovider

import com.aiuta.fashionsdk.configuration.features.models.images.AiutaHistoryImage
import com.aiuta.fashionsdk.configuration.features.tryon.history.dataprovider.AiutaTryOnGenerationsHistoryFeatureDataProvider
import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey
import com.aiuta.flutter.fashionsdk.domain.listeners.operation.OperationHandledDataProvider
import com.aiuta.flutter.fashionsdk.domain.mappers.images.toFlutter
import com.aiuta.flutter.fashionsdk.domain.mappers.images.toNative
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterAddGeneratedImageAction
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterAiutaDataProviderAction
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterDeleteGeneratedImageAction
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.dataprovider.GenerationsHistoryDataActionKey.UpdateGeneratedImages
import com.aiuta.flutter.fashionsdk.domain.models.images.FlutterAiutaHistoryImage
import com.aiuta.flutter.fashionsdk.utils.json
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.serialization.json.Json

object FlutterAiutaTryOnGenerationsHistoryFeatureDataProvider :
    OperationHandledDataProvider(),
    AiutaTryOnGenerationsHistoryFeatureDataProvider {

    override val handlerKeyChannel: String = "aiutaDataActionsHandler"
    override val dataActionKeys: List<GenerationsHistoryDataActionKey> by lazy {
        listOf(UpdateGeneratedImages())
    }

    private val _generatedImages: MutableStateFlow<List<AiutaHistoryImage>> =
        MutableStateFlow(emptyList())
    override val generatedImages: StateFlow<List<AiutaHistoryImage>> = _generatedImages

    override suspend fun addGeneratedImages(
        productIds: List<String>,
        images: List<AiutaHistoryImage>
    ) {
        return callbackWithOperationHandling {
            val action = FlutterAddGeneratedImageAction(
                productsIds = productIds,
                generatedImages = images.map { it.toFlutter() }
            )
            sendEvent(Json.encodeToString<FlutterAiutaDataProviderAction>(action))

            action.id
        }
    }

    override suspend fun deleteGeneratedImages(images: List<AiutaHistoryImage>) {
        return callbackWithOperationHandling {
            val action = FlutterDeleteGeneratedImageAction(
                generatedImages = images.map { it.toFlutter() }
            )
            sendEvent(Json.encodeToString<FlutterAiutaDataProviderAction>(action))

            action.id
        }
    }

    override fun handleDataActionKeyAfterOperationHandling(
        call: MethodCall,
        dataActionKey: FlutterDataActionKey
    ) {
        if (dataActionKey !is GenerationsHistoryDataActionKey) return

        when (dataActionKey) {
            is UpdateGeneratedImages -> {
                val rawGeneratedImages = call.argument<String>(dataActionKey.PARAM_GENERATED_IMAGES)
                rawGeneratedImages?.let {
                    val generatedImages: List<FlutterAiutaHistoryImage> = json.decodeFromString(
                        string = rawGeneratedImages
                    )
                    _generatedImages.value = generatedImages.map { it.toNative() }
                }
            }
        }
    }
}