package com.aiuta.flutter.fashionsdk.domain.listeners.actions

import com.aiuta.fashionsdk.configuration.features.consent.standalone.dataprovider.AiutaConsentStandaloneFeatureDataProvider
import com.aiuta.fashionsdk.configuration.features.models.images.AiutaHistoryImage
import com.aiuta.fashionsdk.configuration.features.picker.history.dataprovider.AiutaImagePickerUploadsHistoryFeatureDataProvider
import com.aiuta.fashionsdk.configuration.features.share.dataprovider.AiutaShareFeatureDataProvider
import com.aiuta.fashionsdk.configuration.features.tryon.history.dataprovider.AiutaTryOnGenerationsHistoryFeatureDataProvider
import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey
import com.aiuta.flutter.fashionsdk.domain.listeners.operation.OperationHandledDataProvider
import com.aiuta.flutter.fashionsdk.domain.mappers.images.toFlutter
import com.aiuta.flutter.fashionsdk.domain.mappers.images.toNative
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterAddGeneratedImageAction
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterAddUploadedImageAction
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterAiutaDataProviderAction
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterDeleteGeneratedImageAction
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterDeleteUploadedImageAction
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterGetShareTextAction
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterObtainUserConsentAction
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterSelectUploadedImageAction
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.dataprovider.ConsentStandaloneDataActionKey.UpdateObtainedConsents
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.picker.history.dataprovider.UploadsHistoryDataActionKey.UpdateUploadedImages
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.dataprovider.ShareDataActionKey.SolveShareText
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.tryon.history.dataprovider.GenerationsHistoryDataActionKey.UpdateGeneratedImages
import com.aiuta.flutter.fashionsdk.domain.models.images.FlutterAiutaHistoryImage
import com.aiuta.flutter.fashionsdk.utils.json
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.serialization.json.Json
import kotlin.coroutines.Continuation
import kotlin.coroutines.suspendCoroutine

private fun generateKey(productIds: List<String>) = productIds.joinToString("-")

object FlutterDataActionHandler :
    OperationHandledDataProvider(),
    AiutaTryOnGenerationsHistoryFeatureDataProvider,
    AiutaImagePickerUploadsHistoryFeatureDataProvider,
    AiutaConsentStandaloneFeatureDataProvider,
    AiutaShareFeatureDataProvider {


    override val handlerKeyChannel: String = "aiutaDataActionsHandler"
    override val nonOperationDataActionKey: List<FlutterDataActionKey> by lazy {
        listOf(
            UpdateGeneratedImages(),
            UpdateUploadedImages(),
            UpdateObtainedConsents(),
            SolveShareText()
        )
    }

    private val shareOperationMap: MutableMap<String, Continuation<String>> = mutableMapOf()

    private val _generatedImages: MutableStateFlow<List<AiutaHistoryImage>> = MutableStateFlow(emptyList())
    override val generatedImages: StateFlow<List<AiutaHistoryImage>> = _generatedImages

    private val _uploadedImages: MutableStateFlow<List<AiutaHistoryImage>> = MutableStateFlow(emptyList())
    override val uploadedImages: StateFlow<List<AiutaHistoryImage>> = _uploadedImages

    private val _obtainedConsentsIds: MutableStateFlow<List<String>> = MutableStateFlow(emptyList())
    override val obtainedConsentsIds: StateFlow<List<String>> = _obtainedConsentsIds

    override suspend fun addUploadedImages(images: List<AiutaHistoryImage>) {
        println("addUploadedImages: images - ${images}")
        return callbackWithOperationHandling {
            println("addUploadedImages: in callback images")
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

    override fun obtainConsent(consentIds: List<String>) {
        val action = FlutterObtainUserConsentAction(consentIds = consentIds)
        sendEvent(Json.encodeToString<FlutterAiutaDataProviderAction>(action))
    }

    override suspend fun getShareText(productIds: List<String>): String {
        return suspendCoroutine { continuation ->
            val action = FlutterGetShareTextAction(
                productIds = productIds,
            )
            sendEvent(Json.encodeToString<FlutterAiutaDataProviderAction>(action))

            val operationId = generateKey(productIds)

            shareOperationMap[operationId] = continuation
        }
    }

    override fun handleDataActionKeyAfterOperationHandling(
        call: MethodCall,
        dataActionKey: FlutterDataActionKey
    ) {
        when (dataActionKey) {
            // Histories
            is UpdateGeneratedImages -> {
                val rawGeneratedImages = call.argument<String>(dataActionKey.PARAM_GENERATED_IMAGES)
                rawGeneratedImages?.let {
                    val generatedImages: List<FlutterAiutaHistoryImage> = json.decodeFromString(
                        string = rawGeneratedImages
                    )
                    _generatedImages.value = generatedImages.map { it.toNative() }
                }
            }

            is UpdateUploadedImages -> {
                val rawUploadedImages = call.argument<String>(dataActionKey.PARAM_UPLOADED_IMAGES)
                rawUploadedImages?.let {
                    val uploadedImages: List<FlutterAiutaHistoryImage> = json.decodeFromString(
                        string = rawUploadedImages
                    )
                    _uploadedImages.value = uploadedImages.map { it.toNative() }
                }
            }

            // Consent
            is UpdateObtainedConsents -> {
                val rawConsentIds = call.argument<String>(dataActionKey.PARAM_OBTAINED_CONSENT_IDS)
                rawConsentIds?.let {
                    val consentIds = json.decodeFromString<List<String>>(rawConsentIds)
                    _obtainedConsentsIds.value = consentIds
                }
            }

            // Share
            is SolveShareText -> {
                val shareText = call.argument<String>(dataActionKey.PARAM_TEXT)

                val rawProductIds = call.argument<String>(dataActionKey.PARAM_PRODUCT_IDS)
                val productIds = rawProductIds?.let { json.decodeFromString<List<String>>(rawProductIds) }

                if (shareText == null || productIds == null) return
                val key = generateKey(productIds)

                shareOperationMap[key]?.resumeWith(Result.success(shareText)).also {
                    shareOperationMap.remove(key)
                }
            }
        }
    }
}