package com.aiuta.flutter.fashionsdk.domain.listeners.base

import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey
import io.flutter.plugin.common.MethodCall

abstract class BaseDataProvider : BaseHandler() {

    abstract val dataActionKeys: List<FlutterDataActionKey>
    private val actualDataActionKeys by lazy { dataActionKeys.map { it.key }.toSet() }

    fun canHandleUpdateOfData(dataActionKey: FlutterDataActionKey): Boolean {
        return dataActionKey.key in actualDataActionKeys
    }

    abstract fun MethodCall.handleDataOfData(dataActionKey: FlutterDataActionKey)
}