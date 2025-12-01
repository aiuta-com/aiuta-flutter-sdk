package com.aiuta.flutter.fashionsdk

import android.app.Activity
import android.app.Activity.RESULT_OK
import android.content.Intent
import androidx.activity.result.contract.ActivityResultContracts.RequestMultiplePermissions.Companion.EXTRA_PERMISSIONS
import androidx.activity.result.contract.ActivityResultContracts.RequestMultiplePermissions.Companion.EXTRA_PERMISSION_GRANT_RESULTS
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry
import androidx.lifecycle.lifecycleScope
import com.aiuta.fashionsdk.analytics.AiutaAnalytics
import com.aiuta.fashionsdk.analytics.analytics
import com.aiuta.flutter.fashionsdk.domain.aiuta.AiutaFlutterConfigurationHolder
import com.aiuta.flutter.fashionsdk.domain.aiuta.AiutaFlutterConfigurationHolder.CONFIGURATION_KEY
import com.aiuta.flutter.fashionsdk.domain.aiuta.AiutaFlutterConfigurationHolder.PRODUCT_KEY
import com.aiuta.flutter.fashionsdk.domain.aiuta.AiutaFlutterConfigurationHolder.PRODUCTS_KEY
import com.aiuta.flutter.fashionsdk.domain.aiuta.AiutaHolder
import com.aiuta.flutter.fashionsdk.domain.aiuta.AiutaNativeConfigurationHolder
import com.aiuta.flutter.fashionsdk.domain.listeners.analytic.AiutaAnalyticHandler
import com.aiuta.flutter.fashionsdk.domain.listeners.base.handleDataActionKey
import com.aiuta.flutter.fashionsdk.domain.listeners.flutterDataProvider
import com.aiuta.flutter.fashionsdk.domain.listeners.flutterHandlers
import com.aiuta.flutter.fashionsdk.domain.listeners.result.AiutaOnActivityResultListener
import com.aiuta.flutter.fashionsdk.domain.listeners.state.AiutaSDKStateListener
import com.aiuta.flutter.fashionsdk.domain.models.configuration.FlutterAiutaConfiguration
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.meta.FlutterAiutaPresentationStyle
import com.aiuta.flutter.fashionsdk.domain.models.flow.AiutaFlowType
import com.aiuta.flutter.fashionsdk.ui.history.AiutaHistoryActivity
import com.aiuta.flutter.fashionsdk.ui.history.AiutaHistoryBottomSheetDialog
import com.aiuta.flutter.fashionsdk.ui.main.AiutaActivity
import com.aiuta.flutter.fashionsdk.ui.main.AiutaBottomSheetDialog
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import kotlinx.coroutines.flow.launchIn
import kotlinx.coroutines.flow.onEach

/** AiutaPlugin */
class AiutaPlugin : FlutterPlugin, MethodCallHandler, ActivityAware, LifecycleOwner {

    private lateinit var mainChannel: MethodChannel

    private val eventChannelMap: MutableMap<String, EventChannel> = mutableMapOf()
    private var activity: Activity? = null

    private val lifecycleRegistry = LifecycleRegistry(this)
    override val lifecycle: Lifecycle = lifecycleRegistry

    private val activityResultListener by lazy { AiutaOnActivityResultListener() }

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        mainChannel = MethodChannel(flutterPluginBinding.binaryMessenger, KEY_MAIN_CHANNEL)
        mainChannel.setMethodCallHandler(this)


        // Init all handlers
        flutterHandlers.forEach { handler ->
            eventChannelMap[handler.handlerKeyChannel] = EventChannel(
                flutterPluginBinding.binaryMessenger,
                handler.handlerKeyChannel
            ).also { channel ->
                channel.setStreamHandler(handler)
            }
        }
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        when (val method = call.method) {
            // Main flow
            "startAiutaFlow" -> {
                activity?.let { localActivity ->
                    call.aiutaScope(AiutaFlowType.SINGLE_TRY_ON) { configuration ->
                        if (configuration.userInterface.presentationStyle == FlutterAiutaPresentationStyle.FULL_SCREEN) {
                            localActivity.startActivity(
                                Intent(
                                    localActivity,
                                    AiutaActivity::class.java
                                )
                            )
                        } else {
                            val bottomSheet = AiutaBottomSheetDialog(
                                activity = localActivity,
                                activityResultListener = activityResultListener,
                                theme = R.style.AiutaBottomSheetDialogTheme
                            )
                            bottomSheet.show()
                        }
                    }
                    result.success(null)
                }
            }

            "startOutfitAiutaFlow" -> {
                activity?.let { localActivity ->
                    call.aiutaScope(AiutaFlowType.MULTI_TRY_ON) { configuration ->
                        if (configuration.userInterface.presentationStyle == FlutterAiutaPresentationStyle.FULL_SCREEN) {
                            localActivity.startActivity(
                                Intent(
                                    localActivity,
                                    AiutaActivity::class.java
                                )
                            )
                        } else {
                            val bottomSheet = AiutaBottomSheetDialog(
                                activity = localActivity,
                                activityResultListener = activityResultListener,
                                theme = R.style.AiutaBottomSheetDialogTheme
                            )
                            bottomSheet.show()
                        }
                    }
                    result.success(null)
                }
            }

            "startHistoryFlow" -> {
                activity?.let { localActivity ->
                    call.aiutaScope(AiutaFlowType.HISTORY) { configuration ->
                        if (configuration.userInterface.presentationStyle == FlutterAiutaPresentationStyle.FULL_SCREEN) {
                            localActivity.startActivity(
                                Intent(
                                    localActivity,
                                    AiutaHistoryActivity::class.java
                                )
                            )
                        } else {
                            val bottomSheet = AiutaHistoryBottomSheetDialog(
                                activity = localActivity,
                                activityResultListener = activityResultListener,
                                theme = R.style.AiutaBottomSheetDialogTheme
                            )
                            bottomSheet.show()
                        }
                    }
                    result.success(null)
                }
            }

            // Configuration handling
            "configure" -> {
                activity?.let { localActivity -> call.initAiutaScope(localActivity) }
                result.success(null)
            }

            // Listeners ->
            "isForeground" -> {
                result.success(AiutaSDKStateListener.isSDKInForeground.value)
            }

            else -> {
                for (dataProvider in flutterDataProvider) {
                    if (dataProvider.canHandleDataActionKey(method)) {
                        dataProvider.handleDataActionKey(
                            call = call,
                            rawDataActionKey = method,
                        )

                        return result.success(null)
                    }
                }

                result.notImplemented()
            }
        }
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        mainChannel.setMethodCallHandler(null)
        for ((key, value) in eventChannelMap) {
            value.setStreamHandler(null)
            eventChannelMap.remove(key)
        }
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activity = binding.activity

        // Add listener for result
        binding.addActivityResultListener { requestCode, resultCode, data ->
            activityResultListener.onActivityResult(requestCode, resultCode, data)
            true
        }
        // Add listener for permissions
        binding.addRequestPermissionsResultListener { requestCode, permissions, grantResults ->
            activityResultListener.onActivityResult(
                requestCode,
                RESULT_OK,
                Intent()
                    .putExtra(EXTRA_PERMISSIONS, permissions)
                    .putExtra(EXTRA_PERMISSION_GRANT_RESULTS, grantResults)
            )
            true
        }

        lifecycleRegistry.currentState = Lifecycle.State.CREATED
    }

    override fun onDetachedFromActivityForConfigChanges() {
        activity = null

        lifecycleRegistry.currentState = Lifecycle.State.DESTROYED
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        activity = binding.activity

        lifecycleRegistry.currentState = Lifecycle.State.CREATED
    }

    override fun onDetachedFromActivity() {
        activity = null

        lifecycleRegistry.currentState = Lifecycle.State.DESTROYED
    }

    private fun MethodCall.initAiutaScope(
        activity: Activity,
    ) {
        // Init flutter configuration
        AiutaFlutterConfigurationHolder.setFlutterConfiguration(argument<String>(CONFIGURATION_KEY))

        // Init Aiuta
        val flutterAiutaConfiguration = AiutaFlutterConfigurationHolder.getFlutterConfiguration()
        AiutaHolder.setAiuta(
            context = activity,
            flutterAiutaConfiguration = flutterAiutaConfiguration,
        )

        // Start observing analytics
        observeAnalytic(
            aiutaAnalytic = AiutaHolder.getAiuta().analytics
        )

        // Init Aiuta Configuration
        AiutaNativeConfigurationHolder.setNativeConfiguration(
            assetManager = activity.assets,
        )
    }

    private inline fun MethodCall.aiutaScope(
        type: AiutaFlowType,
        block: (configuration: FlutterAiutaConfiguration) -> Unit,
    ) {
        // Init product
        when (type) {
            AiutaFlowType.SINGLE_TRY_ON -> AiutaFlutterConfigurationHolder.setProduct(argument<String>(PRODUCT_KEY))
            AiutaFlowType.MULTI_TRY_ON -> AiutaFlutterConfigurationHolder.setProducts(argument<String>(PRODUCTS_KEY))
            AiutaFlowType.HISTORY -> Unit
        }

        // Extract platform configuration
        val configuration = AiutaFlutterConfigurationHolder.getFlutterConfiguration()

        // Execute block
        block(configuration)
    }

    private fun observeAnalytic(aiutaAnalytic: AiutaAnalytics) {
        aiutaAnalytic.analyticFlow
            .onEach { event -> AiutaAnalyticHandler.sendAnalytic(event) }
            .launchIn(lifecycleScope)
    }

    private companion object {
        private const val KEY_MAIN_CHANNEL = "aiutasdk"
    }
}
