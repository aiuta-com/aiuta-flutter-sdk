package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.history.dataprovider

import com.aiuta.fashionsdk.configuration.features.models.images.AiutaHistoryImage
import com.aiuta.fashionsdk.configuration.features.picker.history.dataprovider.AiutaImagePickerUploadsHistoryFeatureDataProvider
import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey
import com.aiuta.flutter.fashionsdk.domain.listeners.operation.OperationHandledDataProvider
import com.aiuta.flutter.fashionsdk.domain.mappers.images.toFlutter
import com.aiuta.flutter.fashionsdk.domain.mappers.images.toNative
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterAddUploadedImageAction
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterAiutaDataProviderAction
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterDeleteUploadedImageAction
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterSelectUploadedImageAction
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.history.dataprovider.UploadsHistoryDataActionKey.UpdateUploadedImages
import com.aiuta.flutter.fashionsdk.domain.models.images.FlutterAiutaHistoryImage
import com.aiuta.flutter.fashionsdk.utils.json
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.serialization.json.Json
import kotlin.collections.map

object FlutterAiutaImagePickerUploadsHistoryFeatureDataProvider :
    OperationHandledDataProvider(),
    AiutaImagePickerUploadsHistoryFeatureDataProvider {

    override val handlerKeyChannel: String = "aiutaDataActionsHandler"
    override val dataActionKeys: List<UploadsHistoryDataActionKey> by lazy {
        listOf(UpdateUploadedImages())
    }

    private val _uploadedImages: MutableStateFlow<List<AiutaHistoryImage>> =
        MutableStateFlow(emptyList())
    override val uploadedImages: StateFlow<List<AiutaHistoryImage>> = _uploadedImages

    override suspend fun addUploadedImages(images: List<AiutaHistoryImage>) {
        return callbackWithOperationHandling {
            val action = FlutterAddUploadedImageAction(
                uploadedImages = images.map { it.toFlutter() }
            )
            sendEvent(Json.encodeToString<FlutterAiutaDataProviderAction>(action))

            action.id
        }
    }

    override suspend fun selectUploadedImage(image: AiutaHistoryImage) {
        return callbackWithOperationHandling {
            val action = FlutterSelectUploadedImageAction(
                uploadedImage = image.toFlutter()
            )
            sendEvent(Json.encodeToString<FlutterAiutaDataProviderAction>(action))

            action.id
        }
    }

    override suspend fun deleteUploadedImages(images: List<AiutaHistoryImage>) {
        return callbackWithOperationHandling {
            val action = FlutterDeleteUploadedImageAction(
                uploadedImages = images.map { it.toFlutter() }
            )
            sendEvent(Json.encodeToString<FlutterAiutaDataProviderAction>(action))

            action.id
        }
    }

    override fun handleDataActionKeyAfterOperationHandling(
        call: MethodCall,
        dataActionKey: FlutterDataActionKey
    ) {
        if (dataActionKey !is UploadsHistoryDataActionKey) return

        when (dataActionKey) {
            is UpdateUploadedImages -> {
                val rawUploadedImages = call.argument<String>(dataActionKey.PARAM_UPLOADED_IMAGES)
                rawUploadedImages?.let {
                    val uploadedImages: List<FlutterAiutaHistoryImage> = json.decodeFromString(
                        string = rawUploadedImages
                    )
                    _uploadedImages.value = uploadedImages.map { it.toNative() }
                }
            }
        }
    }
}