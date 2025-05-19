package com.aiuta.flutter.fashionsdk.domain.listeners.ui

import com.aiuta.fashionsdk.configuration.ui.actions.AiutaUserInterfaceActions
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.SharedFlow
import java.io.Closeable
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch

object AiutaUIHandler: Closeable, AiutaUserInterfaceActions {
    val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())

    private val _shouldCloseSDKFlow: MutableSharedFlow<Boolean> = MutableSharedFlow()
    val shouldCloseSDKFlow: SharedFlow<Boolean> = _shouldCloseSDKFlow

    override fun closeClick() {
        scope.launch {
            _shouldCloseSDKFlow.emit(true)
        }
    }

    override fun close() {
        scope.cancel()
    }
}