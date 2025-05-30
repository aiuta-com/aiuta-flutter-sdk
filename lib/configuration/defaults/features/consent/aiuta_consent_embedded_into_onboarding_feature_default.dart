import 'package:aiuta_flutter/configuration/features/consent/aiuta_consent_feature.dart';
import 'package:aiuta_flutter/configuration/features/consent/embedded/aiuta_consent_embedded_strings.dart';

final class AiutaConsentEmbeddedIntoOnboardingFeatureDefaultBuilder {
  AiutaConsentEmbeddedIntoOnboardingFeature build({
    required String termsOfServiceUrl,
  }) =>
      AiutaConsentEmbeddedIntoOnboardingFeature(
        strings: AiutaConsentEmbeddedStringsBuiltIn(
          termsOfServiceUrl: termsOfServiceUrl,
        ),
      );
}
