package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.consent.standalone.dataprovider

import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey

sealed interface ConsentStandaloneDataActionKey: FlutterDataActionKey {
    class UpdateObtainedConsents: ConsentStandaloneDataActionKey {
        override val key: String = "updateObtainedConsentsIds"
        val PARAM_OBTAINED_CONSENT_IDS = "obtainedConsentsIds"
    }
}