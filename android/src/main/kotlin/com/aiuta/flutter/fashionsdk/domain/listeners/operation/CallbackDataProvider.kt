package com.aiuta.flutter.fashionsdk.domain.listeners.operation

import com.aiuta.flutter.fashionsdk.domain.listeners.base.BaseDataProvider
import kotlin.coroutines.Continuation
import kotlin.coroutines.suspendCoroutine

abstract class CallbackDataProvider<T> : BaseDataProvider() {

    protected val operationMap: MutableMap<String, Continuation<T>> = mutableMapOf()

    suspend fun callbackWithOperationHandling(block: () -> String): T {
        return suspendCoroutine { continuation ->
            val operationId = block()
            operationMap[operationId] = continuation
        }
    }

    fun removeOperation(operationId: String) {
        operationMap.remove(operationId)
    }
}