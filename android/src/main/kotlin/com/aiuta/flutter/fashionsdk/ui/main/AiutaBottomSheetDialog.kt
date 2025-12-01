package com.aiuta.flutter.fashionsdk.ui.main

import android.app.Activity
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.platform.rememberNestedScrollInteropConnection
import com.aiuta.fashionsdk.tryon.compose.ui.AiutaTryOnFlow
import com.aiuta.flutter.fashionsdk.domain.aiuta.AiutaFlutterConfigurationHolder
import com.aiuta.flutter.fashionsdk.domain.aiuta.AiutaNativeConfigurationHolder
import com.aiuta.flutter.fashionsdk.domain.listeners.result.AiutaOnActivityResultListener
import com.aiuta.flutter.fashionsdk.ui.base.BaseAiutaBottomSheetDialog

class AiutaBottomSheetDialog(
    activity: Activity,
    activityResultListener: AiutaOnActivityResultListener,
    theme: Int,
) : BaseAiutaBottomSheetDialog(activity, activityResultListener, theme) {

    init {
        setContent {
            val configuration = remember {
                AiutaNativeConfigurationHolder.getNativeConfiguration()
            }
            val productConfiguration = remember {
                AiutaFlutterConfigurationHolder.getNativeProductConfiguration()
            }

            val sheetShape = configuration.userInterface.theme.bottomSheet.shapes.bottomSheetShape

            AiutaTryOnFlow(
                modifier = Modifier
                    .fillMaxSize()
                    .clip(shape = sheetShape)
                    .nestedScroll(rememberNestedScrollInteropConnection()),
                aiutaConfiguration = configuration,
                productConfiguration = productConfiguration,
            )
        }
    }
}