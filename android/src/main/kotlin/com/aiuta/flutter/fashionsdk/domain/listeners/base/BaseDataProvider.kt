package com.aiuta.flutter.fashionsdk.domain.listeners.base

import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey
import io.flutter.plugin.common.MethodCall

abstract class BaseDataProvider : BaseHandler() {

    abstract val dataActionKeys: List<FlutterDataActionKey>
    private val actualDataActionKeys by lazy { dataActionKeys.map { it.key }.toSet() }

    open fun canHandleDataActionKey(key: String): Boolean {
        return key in actualDataActionKeys
    }

    abstract fun handleDataActionKey(
        call: MethodCall,
        dataActionKey: FlutterDataActionKey
    )
}

fun BaseDataProvider.handleDataActionKey(
    call: MethodCall,
    rawDataActionKey: String
) {
    val dataActionKey = dataActionKeys.first { it.key == rawDataActionKey }

    handleDataActionKey(
        call = call,
        dataActionKey = dataActionKey,
    )
}