package com.aiuta.flutter.fashionsdk.domain.listeners.operation

import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey
import com.aiuta.flutter.fashionsdk.domain.models.result.FlutterAiutaDataActionError
import com.aiuta.flutter.fashionsdk.domain.models.result.FlutterAiutaDataActionSuccess
import com.aiuta.flutter.fashionsdk.utils.json
import io.flutter.plugin.common.MethodCall
import kotlin.coroutines.resumeWithException

abstract class OperationHandledDataProvider : CallbackDataProvider<Unit>() {

    private val dataActionKeysWithOperations by lazy {
        dataActionKeys + listOf(
            OperationHandledDataActionKey.OperationSucceeded(),
            OperationHandledDataActionKey.OperationFailed(),
        )
    }
    private val actualDataActionKeysWithOperations by lazy {
        dataActionKeysWithOperations.map { it.key }.toSet()
    }

    override fun canHandleDataActionKey(key: String): Boolean {
        return key in actualDataActionKeysWithOperations
    }

    override fun handleDataActionKey(call: MethodCall, dataActionKey: FlutterDataActionKey) {
        when (dataActionKey) {
            is OperationHandledDataActionKey.OperationSucceeded -> {
                val rawSuccessResult = call.argument<String>(dataActionKey.PARAM_SUCCESS)
                rawSuccessResult?.let {
                    val successResult =
                        json.decodeFromString<FlutterAiutaDataActionSuccess>(rawSuccessResult)
                    handleOperationSucceeded(successResult)
                }
            }

            is OperationHandledDataActionKey.OperationFailed -> {
                val rawErrorResult = call.argument<String>(dataActionKey.PARAM_ERROR)
                rawErrorResult?.let {
                    val errorResult =
                        json.decodeFromString<FlutterAiutaDataActionError>(rawErrorResult)
                    handleOperationFailed(errorResult)
                }
            }

            else -> handleDataActionKeyAfterOperationHandling(
                call = call,
                dataActionKey = dataActionKey,
            )
        }
    }

    private fun handleOperationSucceeded(operation: FlutterAiutaDataActionSuccess) {
        operationMap[operation.actionId]?.resumeWith(Result.success(Unit)).also {
            removeOperation(operation.actionId)
        }
    }

    private fun handleOperationFailed(operation: FlutterAiutaDataActionError) {
        operationMap[operation.actionId]?.resumeWithException(
            IllegalStateException("Operation failed: id -  ${operation.actionId}, type - ${operation.actionType}")
        ).also {
            removeOperation(operation.actionId)
        }
    }

    abstract fun handleDataActionKeyAfterOperationHandling(
        call: MethodCall,
        dataActionKey: FlutterDataActionKey
    )
}