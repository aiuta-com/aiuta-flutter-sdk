package com.aiuta.flutter.fashionsdk.domain.models.actions

import com.aiuta.flutter.fashionsdk.domain.models.images.FlutterAiutaHistoryImage
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator
import kotlin.uuid.ExperimentalUuidApi
import kotlin.uuid.Uuid

@OptIn(ExperimentalUuidApi::class)
fun generateDataActionId() = "data-action-${Uuid.random()}"

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed class FlutterAiutaDataProviderAction {
    abstract val id: String

    companion object {
        const val OBTAIN_USER_CONSENT_ACTION = "obtainUserConsentsIds"
        const val ADD_UPLOADED_IMAGE_ACTION = "addUploadedImages"
        const val SELECT_UPLOADED_IMAGE_ACTION = "selectUploadedImage"
        const val DELETE_UPLOADED_IMAGE_ACTION = "deleteUploadedImages"
        const val ADD_GENERATED_IMAGE_ACTION = "addGeneratedImages"
        const val DELETE_GENERATED_IMAGE_ACTION = "deleteGeneratedImages"
        const val GET_SHARE_TEXT_ACTION = "getShareText"
    }

    // Same as const, but as enum
    @Serializable
    enum class ActionType {
        @SerialName(FlutterAiutaDataProviderAction.OBTAIN_USER_CONSENT_ACTION)
        OBTAIN_USER_CONSENT_ACTION,
        @SerialName(FlutterAiutaDataProviderAction.ADD_UPLOADED_IMAGE_ACTION)
        ADD_UPLOADED_IMAGE_ACTION,
        @SerialName(FlutterAiutaDataProviderAction.SELECT_UPLOADED_IMAGE_ACTION)
        SELECT_UPLOADED_IMAGE_ACTION,
        @SerialName(FlutterAiutaDataProviderAction.DELETE_UPLOADED_IMAGE_ACTION)
        DELETE_UPLOADED_IMAGE_ACTION,
        @SerialName(FlutterAiutaDataProviderAction.ADD_GENERATED_IMAGE_ACTION)
        ADD_GENERATED_IMAGE_ACTION,
        @SerialName(FlutterAiutaDataProviderAction.DELETE_GENERATED_IMAGE_ACTION)
        DELETE_GENERATED_IMAGE_ACTION,
        @SerialName(FlutterAiutaDataProviderAction.GET_SHARE_TEXT_ACTION)
        GET_SHARE_TEXT_ACTION,
    }
}

@Serializable
@SerialName(FlutterAiutaDataProviderAction.OBTAIN_USER_CONSENT_ACTION)
class FlutterObtainUserConsentAction(
    @SerialName("id")
    override val id: String = generateDataActionId(),
    @SerialName("consentIds")
    val consentIds: List<String>,
) : FlutterAiutaDataProviderAction()

@Serializable
@SerialName(FlutterAiutaDataProviderAction.ADD_UPLOADED_IMAGE_ACTION)
class FlutterAddUploadedImageAction(
    @SerialName("id")
    override val id: String = generateDataActionId(),
    @SerialName("uploadedImages")
    val uploadedImages: List<FlutterAiutaHistoryImage>
) : FlutterAiutaDataProviderAction()

@Serializable
@SerialName(FlutterAiutaDataProviderAction.SELECT_UPLOADED_IMAGE_ACTION)
class FlutterSelectUploadedImageAction(
    @SerialName("id")
    override val id: String = generateDataActionId(),
    @SerialName("uploadedImage")
    val uploadedImage: FlutterAiutaHistoryImage
) : FlutterAiutaDataProviderAction()

@Serializable
@SerialName(FlutterAiutaDataProviderAction.DELETE_UPLOADED_IMAGE_ACTION)
class FlutterDeleteUploadedImageAction(
    @SerialName("id")
    override val id: String = generateDataActionId(),
    @SerialName("uploadedImages")
    val uploadedImages: List<FlutterAiutaHistoryImage>
) : FlutterAiutaDataProviderAction()


@Serializable
@SerialName(FlutterAiutaDataProviderAction.ADD_GENERATED_IMAGE_ACTION)
class FlutterAddGeneratedImageAction(
    @SerialName("id")
    override val id: String = generateDataActionId(),
    @SerialName("productsIds")
    val productsIds: List<String>,
    @SerialName("generatedImages")
    val generatedImages: List<FlutterAiutaHistoryImage>
) : FlutterAiutaDataProviderAction()

@Serializable
@SerialName(FlutterAiutaDataProviderAction.DELETE_GENERATED_IMAGE_ACTION)
class FlutterDeleteGeneratedImageAction(
    @SerialName("id")
    override val id: String = generateDataActionId(),
    @SerialName("generatedImages")
    val generatedImages: List<FlutterAiutaHistoryImage>
) : FlutterAiutaDataProviderAction()

@Serializable
@SerialName(FlutterAiutaDataProviderAction.GET_SHARE_TEXT_ACTION)
class FlutterGetShareTextAction(
    @SerialName("id")
    override val id: String = generateDataActionId(),
    @SerialName("productIds")
    val productIds: List<String>
) : FlutterAiutaDataProviderAction()