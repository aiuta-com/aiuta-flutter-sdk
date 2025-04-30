package com.aiuta.flutter.fashionsdk.domain.listeners.base

import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey
import io.flutter.plugin.common.MethodCall

abstract class BaseDataProvider : BaseHandler() {

    abstract val dataActionKeys: List<FlutterDataActionKey>
    private val actualDataActionKeys by lazy { dataActionKeys.map { it.key }.toSet() }

    fun canHandleDataActionKey(key: String): Boolean {
        return key in actualDataActionKeys
    }

    fun rawKeyToFlutter(key: String): FlutterDataActionKey {
        return dataActionKeys.first { it.key == key }
    }

    fun handleDataActionKey(
        call: MethodCall,
        rawDataActionKey: String
    ) {
        handleDataActionKey(
            call = call,
            dataActionKey = rawKeyToFlutter(rawDataActionKey)
        )
    }

    abstract fun handleDataActionKey(
        call: MethodCall,
        dataActionKey: FlutterDataActionKey
    )
}