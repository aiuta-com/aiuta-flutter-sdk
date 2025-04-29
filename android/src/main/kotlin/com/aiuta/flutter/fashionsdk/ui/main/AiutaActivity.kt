package com.aiuta.flutter.fashionsdk.ui.main

import android.os.Bundle
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import com.aiuta.fashionsdk.tryon.compose.ui.AiutaTryOnFlow
import com.aiuta.flutter.fashionsdk.domain.aiuta.AiutaFlutterConfigurationHolder
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.theme.rememberAiutaThemeFromPlatform
import com.aiuta.flutter.fashionsdk.domain.mappers.product.toSKUItem
import com.aiuta.flutter.fashionsdk.ui.base.BaseAiutaActivity

class AiutaActivity : BaseAiutaActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        enableEdgeToEdge()
        super.onCreate(savedInstanceState)

        setBaseContent {
            val skuItem = remember { AiutaFlutterConfigurationHolder.getProduct().toSKUItem() }
            val theme = rememberAiutaThemeFromPlatform(
                configuration = AiutaFlutterConfigurationHolder.getFlutterConfiguration(),
                assetManager = assets
            )
            val configuration = remember {
                AiutaFlutterConfigurationHolder.getTryOnConfiguration()
            }

            AiutaTryOnFlow(
                modifier = Modifier.fillMaxSize(),
                aiutaTryOnListeners = aiutaTryOnListeners,
                aiutaTryOnConfiguration = configuration,
                aiutaTheme = theme,
                skuForGeneration = skuItem,
            )
        }
    }
}