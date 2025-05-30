import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_feature.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_icons.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_images.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_strings.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_styles.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';

final class AiutaOnboardingBestResultsPageFeatureDefaultBuilder {
  AiutaOnboardingBestResultsPageFeature build() =>
      AiutaOnboardingBestResultsPageFeature(
        images: AiutaOnboardingBestResultsPageImagesBuiltIn(),
        icons: AiutaOnboardingBestResultsPageIconsBuiltIn(),
        strings: AiutaOnboardingBestResultsPageStringsBuiltIn(),
        styles: AiutaOnboardingBestResultsPageStyles(
          reduceOnboardingBestResultsShadows: false,
        ),
      );
}
