package com.aiuta.flutter.fashionsdk.domain.models.configuration.features.onboarding.dataprovider

import com.aiuta.flutter.fashionsdk.domain.listeners.base.data.FlutterDataActionKey

sealed interface OnboardingDataActionKey: FlutterDataActionKey {
    class UpdateOnboardingState: OnboardingDataActionKey {
        override val key: String = "updateIsOnboardingCompleted"
        val PARAM_IS_ONBOARDING_COMPLETED = "isOnboardingCompleted"
    }
}