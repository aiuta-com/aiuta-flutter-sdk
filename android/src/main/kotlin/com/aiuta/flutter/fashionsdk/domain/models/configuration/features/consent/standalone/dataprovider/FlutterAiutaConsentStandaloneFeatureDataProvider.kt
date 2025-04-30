package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.dataprovider

import com.aiuta.fashionsdk.configuration.features.consent.standalone.dataprovider.AiutaConsentStandaloneFeatureDataProvider
import com.aiuta.flutter.fashionsdk.domain.listeners.base.BaseDataProvider
import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterAiutaDataProviderAction
import com.aiuta.flutter.fashionsdk.domain.models.actions.FlutterObtainUserConsentAction
import com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.dataprovider.ConsentStandaloneDataActionKey.UpdateObtainedConsents
import com.aiuta.flutter.fashionsdk.utils.json
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.serialization.json.Json

object FlutterAiutaConsentStandaloneFeatureDataProvider :
    BaseDataProvider(),
    AiutaConsentStandaloneFeatureDataProvider {

    override val handlerKeyChannel: String = "aiutaDataActionsHandler"
    override val dataActionKeys: List<ConsentStandaloneDataActionKey> by lazy {
        listOf(UpdateObtainedConsents())
    }

    private val _obtainedConsentsIds: MutableStateFlow<List<String>> = MutableStateFlow(emptyList())
    override val obtainedConsentsIds: StateFlow<List<String>> = _obtainedConsentsIds

    override fun obtainConsent(consentIds: List<String>) {
        val action = FlutterObtainUserConsentAction(consentIds = consentIds)
        sendEvent(Json.encodeToString<FlutterAiutaDataProviderAction>(action))
    }

    override fun handleDataActionKey(call: MethodCall, dataActionKey: FlutterDataActionKey) {
        if (dataActionKey !is ConsentStandaloneDataActionKey) return

        when (dataActionKey) {
            is UpdateObtainedConsents -> {
                val rawConsentIds = call.argument<String>(dataActionKey.PARAM_OBTAINED_CONSENT_IDS)
                rawConsentIds?.let {
                    val consentIds = json.decodeFromString<List<String>>(rawConsentIds)
                    _obtainedConsentsIds.value = consentIds
                }
            }
        }
    }
}