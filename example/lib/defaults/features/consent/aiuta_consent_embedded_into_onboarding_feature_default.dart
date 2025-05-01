import 'package:aiuta_flutter/configuration/features/consent/aiuta_consent_feature.dart';
import 'package:aiuta_flutter/configuration/features/consent/embedded/aiuta_consent_embedded_strings.dart';

final class ConsentEmbeddedIntoOnboardingFeatureBuilder {
  final String termsOfServiceUrl;

  ConsentEmbeddedIntoOnboardingFeatureBuilder(
      {required this.termsOfServiceUrl});

  AiutaConsentEmbeddedIntoOnboardingFeature build() =>
      AiutaConsentEmbeddedIntoOnboardingFeature(
        strings: AiutaConsentEmbeddedStrings(
          consentHtml:
              'Your photos will be processed by <b><a href="$termsOfServiceUrl">Terms of Use</a></b>',
        ),
      );
}
