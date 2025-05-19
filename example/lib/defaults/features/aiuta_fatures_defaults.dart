import 'package:aiuta_flutter/configuration/features/aiuta_features.dart';
import 'package:aiutasdk_example/defaults/features/consent/aiuta_consent_embedded_into_onboarding_feature_default.dart';
import 'package:aiutasdk_example/defaults/features/onboarding/aiuta_onboarding_feature_default.dart';
import 'package:aiutasdk_example/defaults/features/picker/aiuta_image_picker_feature_default.dart';
import 'package:aiutasdk_example/defaults/features/share/aiuta_share_feature_default.dart';
import 'package:aiutasdk_example/defaults/features/tryon/aiuta_try_on_feature_default.dart';

final class FeaturesBuilder {
  AiutaFeatures build() => AiutaFeatures(
        onboarding: OnboardingFeatureBuilder().build(),
        consent: ConsentEmbeddedIntoOnboardingFeatureBuilder(
                termsOfServiceUrl: "https://your-domain.com/you-tos")
            .build(),
        imagePicker: ImagePickerFeatureBuilder().build(),
        tryOn: TryOnFeatureBuilder().build(),
        share: ShareFeatureBuilder().build(),
      );
}
