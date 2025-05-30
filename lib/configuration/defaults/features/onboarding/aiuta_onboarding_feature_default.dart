import 'package:aiuta_flutter/configuration/defaults/features/onboarding/bestresult/aiuta_onboarding_best_results_page_feature_default.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/aiuta_onboarding_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/aiuta_onboarding_feature.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/aiuta_onboarding_shapes.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/aiuta_onboarding_strings.dart';
import 'howworks/aiuta_onboarding_how_it_works_page_feature_default.dart';

final class AiutaOnboardingFeatureDefaultBuilder {
  AiutaOnboardingFeature build() {
    return AiutaOnboardingFeature(
      howItWorksPage:
          AiutaOnboardingHowItWorksPageFeatureDefaultBuilder().build(),
      bestResultsPage:
          AiutaOnboardingBestResultsPageFeatureDefaultBuilder().build(),
      strings: AiutaOnboardingStringsBuiltIn(),
      shapes: AiutaOnboardingShapes(
        onboardingImageL: 16,
        onboardingImageS: 16,
      ),
      dataProvider: AiutaOnboardingDataProviderBuiltIn(),
    );
  }
}
