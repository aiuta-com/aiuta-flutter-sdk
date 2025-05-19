package com.aiuta.flutter.fashionsdk.ui.history

import android.app.Activity
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.platform.rememberNestedScrollInteropConnection
import androidx.compose.ui.unit.dp
import com.aiuta.fashionsdk.tryon.compose.ui.HistoryFlow
import com.aiuta.flutter.fashionsdk.domain.aiuta.AiutaNativeConfigurationHolder
import com.aiuta.flutter.fashionsdk.domain.listeners.result.AiutaOnActivityResultListener
import com.aiuta.flutter.fashionsdk.ui.base.BaseAiutaBottomSheetDialog

class AiutaHistoryBottomSheetDialog(
    activity: Activity,
    activityResultListener: AiutaOnActivityResultListener,
    theme: Int,
) : BaseAiutaBottomSheetDialog(activity, activityResultListener, theme) {

    init {
        setContent {
            val configuration = remember {
                AiutaNativeConfigurationHolder.getNativeConfiguration()
            }

            HistoryFlow(
                modifier = Modifier
                    .fillMaxSize()
                    .clip(RoundedCornerShape(topStart = 12.dp, topEnd = 12.dp))
                    .nestedScroll(rememberNestedScrollInteropConnection()),
                aiutaConfiguration = configuration,
            )
        }
    }
}