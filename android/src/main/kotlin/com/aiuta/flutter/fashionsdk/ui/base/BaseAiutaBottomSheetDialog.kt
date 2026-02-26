package com.aiuta.flutter.fashionsdk.ui.base

import android.app.Activity
import android.app.Activity.RESULT_CANCELED
import android.content.Intent
import android.content.IntentSender.SendIntentException
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.View
import androidx.activity.compose.LocalActivityResultRegistryOwner
import androidx.activity.result.ActivityResultRegistry
import androidx.activity.result.ActivityResultRegistryOwner
import androidx.activity.result.IntentSenderRequest
import androidx.activity.result.contract.ActivityResultContract
import androidx.activity.result.contract.ActivityResultContracts.RequestMultiplePermissions.Companion.ACTION_REQUEST_PERMISSIONS
import androidx.activity.result.contract.ActivityResultContracts.RequestMultiplePermissions.Companion.EXTRA_PERMISSIONS
import androidx.activity.result.contract.ActivityResultContracts.StartActivityForResult.Companion.EXTRA_ACTIVITY_OPTIONS_BUNDLE
import androidx.activity.result.contract.ActivityResultContracts.StartIntentSenderForResult.Companion.ACTION_INTENT_SENDER_REQUEST
import androidx.activity.result.contract.ActivityResultContracts.StartIntentSenderForResult.Companion.EXTRA_INTENT_SENDER_REQUEST
import androidx.activity.result.contract.ActivityResultContracts.StartIntentSenderForResult.Companion.EXTRA_SEND_INTENT_EXCEPTION
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.platform.ViewCompositionStrategy
import androidx.core.app.ActivityCompat
import androidx.core.app.ActivityOptionsCompat
import androidx.core.graphics.Insets
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import androidx.lifecycle.ViewModelStore
import androidx.lifecycle.ViewModelStoreOwner
import androidx.lifecycle.lifecycleScope
import androidx.lifecycle.setViewTreeViewModelStoreOwner
import com.aiuta.flutter.fashionsdk.domain.aiuta.AiutaHolder
import com.aiuta.flutter.fashionsdk.domain.listeners.result.AiutaOnActivityResultListener
import com.aiuta.flutter.fashionsdk.domain.listeners.ui.AiutaUIHandler
import com.google.android.material.bottomsheet.BottomSheetBehavior
import com.google.android.material.bottomsheet.BottomSheetDialog
import kotlinx.coroutines.flow.filterNotNull
import kotlinx.coroutines.flow.launchIn
import kotlinx.coroutines.flow.onEach

abstract class BaseAiutaBottomSheetDialog(
    private val activity: Activity,
    private val activityResultListener: AiutaOnActivityResultListener,
    theme: Int,
) : BottomSheetDialog(activity, theme),
    ActivityResultRegistryOwner,
    ViewModelStoreOwner {

    private val dialogViewModelStore = ViewModelStore()
    override val viewModelStore: ViewModelStore get() = dialogViewModelStore

    protected val aiuta by lazy { AiutaHolder.getAiuta() }

    // For launcher picker
    override val activityResultRegistry: ActivityResultRegistry =
        object : ActivityResultRegistry() {
            override fun <I, O> onLaunch(
                requestCode: Int,
                contract: ActivityResultContract<I, O>,
                input: I,
                options: ActivityOptionsCompat?
            ) {
                val activity = activity

                // Immediate result path
                val synchronousResult = contract.getSynchronousResult(activity, input)
                if (synchronousResult != null) {
                    Handler(Looper.getMainLooper()).post {
                        dispatchResult(
                            requestCode,
                            synchronousResult.value
                        )
                    }
                    return
                }

                // Start activity path
                val intent = contract.createIntent(activity, input)
                var optionsBundle: Bundle? = null
                // If there are any extras, we should defensively set the classLoader
                if (intent.extras != null && intent.extras!!.classLoader == null) {
                    intent.setExtrasClassLoader(activity.classLoader)
                }
                if (intent.hasExtra(EXTRA_ACTIVITY_OPTIONS_BUNDLE)) {
                    optionsBundle = intent.getBundleExtra(EXTRA_ACTIVITY_OPTIONS_BUNDLE)
                    intent.removeExtra(EXTRA_ACTIVITY_OPTIONS_BUNDLE)
                } else if (options != null) {
                    optionsBundle = options.toBundle()
                }
                if (ACTION_REQUEST_PERMISSIONS == intent.action) {
                    // requestPermissions path
                    var permissions = intent.getStringArrayExtra(EXTRA_PERMISSIONS)
                    if (permissions == null) {
                        permissions = arrayOfNulls(0)
                    }
                    ActivityCompat.requestPermissions(activity, permissions, requestCode)
                } else if (ACTION_INTENT_SENDER_REQUEST == intent.action) {
                    val request = intent.getParcelableExtra<IntentSenderRequest>(
                        EXTRA_INTENT_SENDER_REQUEST
                    )
                    try {
                        // startIntentSenderForResult path
                        ActivityCompat.startIntentSenderForResult(
                            activity, request!!.intentSender,
                            requestCode, request.fillInIntent, request.flagsMask,
                            request.flagsValues, 0, optionsBundle
                        )
                    } catch (e: SendIntentException) {
                        Handler(Looper.getMainLooper()).post {
                            dispatchResult(
                                requestCode, RESULT_CANCELED,
                                Intent().setAction(ACTION_INTENT_SENDER_REQUEST)
                                    .putExtra(EXTRA_SEND_INTENT_EXCEPTION, e)
                            )
                        }
                    }
                } else {
                    // startActivityForResult path
                    ActivityCompat.startActivityForResult(
                        activity,
                        intent,
                        requestCode,
                        optionsBundle
                    )
                }
            }
        }


    init {
        behavior.state = BottomSheetBehavior.STATE_EXPANDED
        behavior.skipCollapsed = true
        behavior.isHideable = true
        behavior.isDraggable = false

        // Start observing
        observeActivityResult()
        observeUIHandler()
    }

    protected fun setContent(content: @Composable () -> Unit) {
        val view = composeView(content)
        setContentView(view)

        // Apply insets immediately after setContentView - view hierarchy is ready
        applyComposeInsets()
    }

    private fun composeView(content: @Composable () -> Unit): View {
        return ComposeView(context).apply {
            setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed)
            setViewTreeViewModelStoreOwner(this@BaseAiutaBottomSheetDialog)

            setContent {
                CompositionLocalProvider(
                    LocalActivityResultRegistryOwner provides this@BaseAiutaBottomSheetDialog
                ) {
                    BaseStateListener()
                    content()
                }
            }
        }
    }

    private fun applyComposeInsets() {
        // Find the coordinator layout - it's the parent of bottom sheet
        val coordinator = window?.decorView?.findViewById<View>(
            com.google.android.material.R.id.coordinator,
        )
        val container = findViewById<View>(com.google.android.material.R.id.container)
        val bottomSheet = findViewById<View>(com.google.android.material.R.id.design_bottom_sheet)

        // Apply listener to coordinator first to intercept insets early
        coordinator?.let { coordView ->
            ViewCompat.setOnApplyWindowInsetsListener(coordView) { _, insets ->
                // Pass through without modification - let child views handle
                insets
            }
        }

        // Apply insets to container - modify here before it reaches Compose
        container?.let { containerView ->
            ViewCompat.setOnApplyWindowInsetsListener(containerView) { v, windowInsets ->
                insetsLister(v, windowInsets)
            }
        }

        // Also set on bottom sheet itself - apply padding and pass modified insets
        bottomSheet?.let { view ->
            ViewCompat.setOnApplyWindowInsetsListener(view) { v, windowInsets ->
                insetsLister(v, windowInsets)
            }
        }

        // Request initial insets dispatch
        coordinator?.requestApplyInsets()
            ?: container?.requestApplyInsets()
            ?: bottomSheet?.requestApplyInsets()
    }

    private fun insetsLister(
        view: View,
        windowInsets: WindowInsetsCompat,
    ): WindowInsetsCompat {
        val systemBars = windowInsets.getInsets(WindowInsetsCompat.Type.systemBars())
        val ime = windowInsets.getInsets(WindowInsetsCompat.Type.ime())

        // Apply top padding to prevent going under camera/status bar
        view.setPadding(
            systemBars.left,
            systemBars.top,
            systemBars.right,
            0, // Don't apply bottom padding
        )

        // Build new insets - consume top (set to 0) for Compose
        return WindowInsetsCompat
            .Builder(windowInsets)
            .setInsets(
                WindowInsetsCompat.Type.systemBars(),
                Insets.of(
                    0, // Left consumed by padding
                    0, // Top consumed by padding - prevents double padding in Compose
                    0, // Right consumed by padding
                    systemBars.bottom, // Keep bottom for Compose
                ),
            )
            .setInsets(
                WindowInsetsCompat.Type.ime(),
                ime,
            )
            .build()
    }

    override fun dismiss() {
        if (window?.decorView?.isAttachedToWindow == true) {
            super.dismiss()
        }
        dialogViewModelStore.clear()
    }

    private fun observeActivityResult() {
        activityResultListener
            .activityResultFlow
            .filterNotNull()
            .onEach { incoming ->
                activityResultRegistry.dispatchResult(
                    requestCode = incoming.requestCode,
                    resultCode = incoming.resultCode,
                    data = incoming.data
                )
                activityResultListener.clean()
            }
            .launchIn(lifecycleScope)
    }

    private fun observeUIHandler() {
        AiutaUIHandler.shouldCloseSDKFlow
            .onEach { shouldCloseSDK ->
                if (shouldCloseSDK) {
                    dismiss()
                }
            }
            .launchIn(lifecycleScope)
    }
}