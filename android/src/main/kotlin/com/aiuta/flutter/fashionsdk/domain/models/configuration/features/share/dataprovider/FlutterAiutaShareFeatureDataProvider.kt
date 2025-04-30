package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.dataprovider

import com.aiuta.fashionsdk.configuration.features.share.dataprovider.AiutaShareFeatureDataProvider
import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey
import com.aiuta.flutter.fashionsdk.domain.listeners.operation.CallbackDataProvider
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterAiutaDataProviderAction
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterGetShareTextAction
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.dataprovider.ShareDataActionKey.SolveShareText
import com.aiuta.flutter.fashionsdk.utils.json
import io.flutter.plugin.common.MethodCall
import kotlinx.serialization.json.Json

object FlutterAiutaShareFeatureDataProvider :
    CallbackDataProvider<String>(),
    AiutaShareFeatureDataProvider {

    override val handlerKeyChannel: String = "aiutaDataActionsHandler"
    override val dataActionKeys: List<ShareDataActionKey> by lazy {
        listOf(SolveShareText())
    }

    override suspend fun getShareText(productIds: List<String>): String {
        return callbackWithOperationHandling {
            val action = FlutterGetShareTextAction(
                productIds = productIds,
            )
            sendEvent(Json.encodeToString<FlutterAiutaDataProviderAction>(action))

            generateKey(productIds)
        }
    }

    override fun handleDataActionKey(
        call: MethodCall,
        dataActionKey: FlutterDataActionKey
    ) {
        if (dataActionKey !is ShareDataActionKey) return

        when (dataActionKey) {
            is SolveShareText -> {
                val shareText = call.argument<String>(dataActionKey.PARAM_TEXT)

                val rawProductIds = call.argument<String>(dataActionKey.PARAM_PRODUCT_IDS)
                val productIds = rawProductIds?.let { json.decodeFromString<List<String>>(rawProductIds) }

                if (shareText == null || productIds == null) return
                val key = generateKey(productIds)

                operationMap[key]?.resumeWith(Result.success(shareText)).also {
                    removeOperation(key)
                }
            }
        }
    }

    private fun generateKey(productIds: List<String>) = productIds.joinToString("-")
}