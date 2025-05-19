import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_feature.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_icons.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_images.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_strings.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_styles.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';

final class OnboardingBestResultsPageFeatureBuilder {
  AiutaOnboardingBestResultsPageFeature build() =>
      AiutaOnboardingBestResultsPageFeature(
        images: AiutaOnboardingBestResultsPageImages(
          onboardingBestResultsGood: [
            "res/images/onboarding_good_image_1.png",
            "res/images/onboarding_good_image_2.png",
          ],
          onboardingBestResultsBad: [
            "res/images/onboarding_bad_image_1.png",
            "res/images/onboarding_bad_image_2.png",
          ],
        ),
        icons: AiutaOnboardingBestResultsPageIcons(
          onboardingBestResultsGood24: AiutaIcon(
              path: "res/icons/ic_onboarding_best_results_good_24.png"),
          onboardingBestResultsBad24: AiutaIcon(
              path: "res/icons/ic_onboarding_best_results_bad_24.png"),
        ),
        strings: AiutaOnboardingBestResultsPageStrings(
          onboardingBestResultsPageTitle: "<b>Step 2/2</b> - For best result",
          onboardingBestResultsTitle: "For best results",
          onboardingBestResultsDescription:
              "Use a photo with good lighting, stand straight a plain background",
        ),
        styles: AiutaOnboardingBestResultsPageStyles(
          reduceOnboardingBestResultsShadows: false,
        ),
      );
}
