package com.aiuta.flutter.fashionsdk.ui.history

import android.os.Bundle
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import com.aiuta.fashionsdk.tryon.compose.ui.HistoryFlow
import com.aiuta.flutter.fashionsdk.domain.aiuta.AiutaNativeConfigurationHolder
import com.aiuta.flutter.fashionsdk.ui.base.BaseAiutaActivity

class AiutaHistoryActivity : BaseAiutaActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        enableEdgeToEdge()

        setBaseContent {
            val configuration = remember {
                AiutaNativeConfigurationHolder.getNativeConfiguration()
            }

            HistoryFlow(
                modifier = Modifier.fillMaxSize(),
                aiutaConfiguration = configuration,
            )
        }
    }
}