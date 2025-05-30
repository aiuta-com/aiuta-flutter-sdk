import 'package:aiuta_flutter/configuration/defaults/features/consent/aiuta_consent_embedded_into_onboarding_feature_default.dart';
import 'package:aiuta_flutter/configuration/defaults/features/onboarding/aiuta_onboarding_feature_default.dart';
import 'package:aiuta_flutter/configuration/defaults/features/picker/aiuta_image_picker_feature_default.dart';
import 'package:aiuta_flutter/configuration/defaults/features/share/aiuta_share_feature_default.dart';
import 'package:aiuta_flutter/configuration/defaults/features/tryon/aiuta_try_on_feature_default.dart';
import 'package:aiuta_flutter/configuration/features/aiuta_features.dart';
import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_handler.dart';

final class AiutaFeaturesDefaultBuilder {
  AiutaFeatures build({
    required String termsOfServiceUrl,
    required AiutaTryOnCartHandler cartHandler,
  }) =>
      AiutaFeatures(
        onboarding: AiutaOnboardingFeatureDefaultBuilder().build(),
        consent:
            AiutaConsentEmbeddedIntoOnboardingFeatureDefaultBuilder().build(
          termsOfServiceUrl: termsOfServiceUrl,
        ),
        imagePicker: AiutaImagePickerFeatureDefaultBuilder().build(),
        tryOn: AiutaTryOnFeatureDefaultBuilder().build(
          cartHandler: cartHandler,
        ),
        share: AiutaShareFeatureDefaultBuilder().build(),
      );
}
