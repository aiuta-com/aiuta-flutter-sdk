package com.aiuta.flutter.fashionsdk.domain.models.actions

import com.aiuta.flutter.fashionsdk.domain.models.images.FlutterAiutaHistoryImage
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonClassDiscriminator

@OptIn(ExperimentalSerializationApi::class)
@Serializable
@JsonClassDiscriminator("type")
sealed interface FlutterAiutaDataProviderAction {
    companion object {
        const val OBTAIN_USER_CONSENT_ACTION = "obtainUserConsentsIds"
        const val ADD_UPLOADED_IMAGE_ACTION = "addUploadedImages"
        const val SELECT_UPLOADED_IMAGE_ACTION = "selectUploadedImage"
        const val DELETE_UPLOADED_IMAGE_ACTION = "deleteUploadedImages"
        const val ADD_GENERATED_IMAGE_ACTION = "addGeneratedImages"
        const val DELETE_GENERATED_IMAGE_ACTION = "deleteGeneratedImages"
    }
}

@Serializable
@SerialName(FlutterAiutaDataProviderAction.OBTAIN_USER_CONSENT_ACTION)
class FlutterObtainUserConsentAction(
    @SerialName("consentIds")
    val consentIds: List<String>
): FlutterAiutaDataProviderAction

@Serializable
@SerialName(FlutterAiutaDataProviderAction.ADD_UPLOADED_IMAGE_ACTION)
class FlutterAddUploadedImageAction(
    @SerialName("uploadedImages")
    val uploadedImages: List<FlutterAiutaHistoryImage>
): FlutterAiutaDataProviderAction

@Serializable
@SerialName(FlutterAiutaDataProviderAction.SELECT_UPLOADED_IMAGE_ACTION)
class FlutterSelectUploadedImageAction(
    @SerialName("uploadedImage")
    val uploadedImage: FlutterAiutaHistoryImage
): FlutterAiutaDataProviderAction

@Serializable
@SerialName(FlutterAiutaDataProviderAction.DELETE_UPLOADED_IMAGE_ACTION)
class FlutterDeleteUploadedImageAction(
    @SerialName("uploadedImages")
    val uploadedImages: List<FlutterAiutaHistoryImage>
): FlutterAiutaDataProviderAction


@Serializable
@SerialName(FlutterAiutaDataProviderAction.ADD_GENERATED_IMAGE_ACTION)
class FlutterAddGeneratedImageAction(
    @SerialName("productsIds")
    val productsIds: List<String>,
    @SerialName("generatedImages")
    val generatedImages: List<FlutterAiutaHistoryImage>
): FlutterAiutaDataProviderAction

@Serializable
@SerialName(FlutterAiutaDataProviderAction.DELETE_GENERATED_IMAGE_ACTION)
class FlutterDeleteGeneratedImageAction(
    @SerialName("generatedImages")
    val generatedImages: List<FlutterAiutaHistoryImage>
): FlutterAiutaDataProviderAction