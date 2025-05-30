import 'package:aiuta_flutter/configuration/features/onboarding/how_it_works/aiuta_onboarding_how_it_works_page_feature.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/how_it_works/aiuta_onboarding_how_it_works_page_images.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/how_it_works/aiuta_onboarding_how_it_works_page_strings.dart';

final class AiutaOnboardingHowItWorksPageFeatureDefaultBuilder {
  AiutaOnboardingHowItWorksPageFeature build() =>
      AiutaOnboardingHowItWorksPageFeature(
        images: AiutaOnboardingHowItWorksPageImagesBuiltIn(),
        strings: AiutaOnboardingHowItWorksPageStringsBuiltIn(),
      );
}
