package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.share.dataprovider

import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey

sealed interface ShareDataActionKey : FlutterDataActionKey {
    class SolveShareText : ShareDataActionKey {
        override val key: String = "resolveShareText"
        val PARAM_PRODUCT_IDS = "productIds"
        val PARAM_TEXT = "text"
    }
}