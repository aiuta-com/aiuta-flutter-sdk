import 'package:aiuta_flutter/configuration/features/onboarding/aiuta_onboarding_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/aiuta_onboarding_feature.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/aiuta_onboarding_shapes.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/aiuta_onboarding_strings.dart';
import 'package:aiutasdk_example/defaults/features/onboarding/bestresult/aiuta_onboarding_best_results_page_feature_default.dart';
import 'package:flutter/material.dart';

import 'howworks/aiuta_onboarding_how_it_works_page_feature_default.dart';

final class OnboardingFeatureBuilder {
  AiutaOnboardingFeature build() {
    final onboardingCompletedNotifier = ValueNotifier<bool>(false);

    return AiutaOnboardingFeature(
      howItWorksPage: OnboardingHowItWorksPageFeatureBuilder().build(),
      bestResultsPage: OnboardingBestResultsPageFeatureBuilder().build(),
      strings: AiutaOnboardingStrings(
        onboardingButtonNext: "Next",
        onboardingButtonStart: "Start",
      ),
      shapes: AiutaOnboardingShapes(
        onboardingImageL: 16,
        onboardingImageS: 16,
      ),
      dataProvider: AiutaOnboardingDataProvider(
        isOnboardingCompleted: onboardingCompletedNotifier,
        completeOnboarding: () {
          onboardingCompletedNotifier.value = true;
        },
      ),
    );
  }
}
