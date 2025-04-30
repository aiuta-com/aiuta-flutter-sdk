package com.aiuta.flutter.fashionsdk.domain.models.result

import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterAiutaDataProviderAction
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable


sealed interface FlutterAiutaDataActionResult {
    val actionId: String
    val actionType: FlutterAiutaDataProviderAction.ActionType
}

@Serializable
class FlutterAiutaDataActionError(
    @SerialName("actionId")
    override val actionId: String,
    @SerialName("actionType")
    override val actionType: FlutterAiutaDataProviderAction.ActionType,
) : FlutterAiutaDataActionResult

@Serializable
class FlutterAiutaDataActionSuccess(
    @SerialName("actionId")
    override val actionId: String,
    @SerialName("actionType")
    override val actionType: FlutterAiutaDataProviderAction.ActionType,
): FlutterAiutaDataActionResult