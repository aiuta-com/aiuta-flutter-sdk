package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.dataprovider

import com.aiuta.fashionsdk.configuration.features.share.dataprovider.AiutaShareFeatureDataProvider
import com.aiuta.flutter.fashionsdk.domain.listeners.base.BaseDataProvider
import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey
import io.flutter.plugin.common.MethodCall

object FlutterAiutaShareFeatureDataProvider :
    BaseDataProvider(),
    AiutaShareFeatureDataProvider {

    override val handlerKeyChannel: String = "TODO"
    override val dataActionKeys: List<FlutterDataActionKey> by lazy {
        // TODO
        listOf()
    }

    override fun handleDataActionKey(call: MethodCall, dataActionKey: FlutterDataActionKey) {
        // TODO
    }

    override fun getShareText(productIds: List<String>): String {
        return "TODO"
    }
}