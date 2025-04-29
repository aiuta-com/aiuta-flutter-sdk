package com.aiuta.flutter.fashionsdk.ui.base

import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionContext
import androidx.lifecycle.lifecycleScope
import com.aiuta.fashionsdk.analytic.analytic
import com.aiuta.flutter.fashionsdk.domain.aiuta.AiutaHolder
import com.aiuta.flutter.fashionsdk.domain.listeners.analytic.AiutaAnalyticHandler
import kotlinx.coroutines.flow.launchIn
import kotlinx.coroutines.flow.onEach

abstract class BaseAiutaActivity : ComponentActivity() {

    protected val aiuta by lazy { AiutaHolder.getAiuta() }
    private val aiutaAnalytic by lazy { aiuta.analytic }

    init {
        // Start observing
        observeAnalytic()
    }

    fun setBaseContent(
        parent: CompositionContext? = null,
        content: @Composable () -> Unit
    ) {
        setContent(parent) {
            BaseStateListener()
            content()
        }
    }

    private fun observeAnalytic() {
        aiutaAnalytic.analyticFlow
            .onEach { event -> AiutaAnalyticHandler.sendAnalytic(event) }
            .launchIn(lifecycleScope)
    }
}