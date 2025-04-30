import 'package:aiuta_flutter/configuration/features/onboarding/how_it_works/aiuta_onboarding_how_it_works_page_feature.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/how_it_works/aiuta_onboarding_how_it_works_page_images.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/how_it_works/aiuta_onboarding_how_it_works_page_strings.dart';

final class OnboardingHowItWorksPageFeatureBuilder {
  AiutaOnboardingHowItWorksPageFeature build() =>
      AiutaOnboardingHowItWorksPageFeature(
        images: AiutaOnboardingHowItWorksPageImages(
          onboardingHowItWorksItems: [
            OnboardingHowItWorksItem(
              itemPhoto: "res/images/onboarding_main_1.png",
              itemPreview: "res/images/onboarding_item_1.png",
            ),
            OnboardingHowItWorksItem(
              itemPhoto: "res/images/onboarding_main_2.png",
              itemPreview: "res/images/onboarding_item_2.png",
            ),
            OnboardingHowItWorksItem(
              itemPhoto: "res/images/onboarding_main_3.png",
              itemPreview: "res/images/onboarding_item_3.png",
            ),
          ],
        ),
        strings: AiutaOnboardingHowItWorksPageStrings(
          onboardingHowItWorksPageTitle: "<b>Step 1/2</b> - How it works",
          onboardingHowItWorksTitle: "Try on before buying",
          onboardingHowItWorksDescription:
              "Upload a photo and see how items look on you",
        ),
      );
}
