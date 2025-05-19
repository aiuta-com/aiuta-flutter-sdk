package com.aiuta.flutter.fashionsdk.domain.listeners.operation

import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey

sealed interface OperationHandledDataActionKey : FlutterDataActionKey {

    class OperationSucceeded : OperationHandledDataActionKey {
        override val key: String = "notifyDataActionSucceeded"
        val PARAM_SUCCESS = "success"
    }


    class OperationFailed : OperationHandledDataActionKey {
        override val key: String = "notifyDataActionErrorThrown"
        val PARAM_ERROR = "error"
    }
}