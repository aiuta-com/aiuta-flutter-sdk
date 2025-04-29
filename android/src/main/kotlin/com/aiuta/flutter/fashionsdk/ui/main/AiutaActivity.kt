package com.aiuta.flutter.fashionsdk.ui.main

import android.os.Bundle
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import com.aiuta.fashionsdk.tryon.compose.ui.AiutaTryOnFlow
import com.aiuta.flutter.fashionsdk.domain.aiuta.AiutaFlutterConfigurationHolder
import com.aiuta.flutter.fashionsdk.domain.aiuta.AiutaNativeConfigurationHolder
import com.aiuta.flutter.fashionsdk.ui.base.BaseAiutaActivity

class AiutaActivity : BaseAiutaActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        enableEdgeToEdge()
        super.onCreate(savedInstanceState)

        setBaseContent {
            val product = remember { AiutaFlutterConfigurationHolder.getNativeProduct() }
            val configuration = remember {
                AiutaNativeConfigurationHolder.getNativeConfiguration()
            }

            AiutaTryOnFlow(
                modifier = Modifier.fillMaxSize(),
                aiutaConfiguration = configuration,
                productForGeneration = product,
            )
        }
    }
}