import 'package:aiuta_flutter/configuration/features/consent/aiuta_consent_feature.dart';
import 'package:aiuta_flutter/configuration/features/welcome_screen/aiuta_welcome_screen_feature.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/aiuta_onboarding_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/aiuta_image_picker_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_feature.dart';
import 'package:aiuta_flutter/configuration/features/powered_by/aiuta_powered_by_feature.dart';
import 'package:aiuta_flutter/configuration/features/share/aiuta_share_feature.dart';
import 'package:aiuta_flutter/configuration/features/wishlist/aiuta_wishlist_feature.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_features.g.dart';

/// This class is used to manage the features of the Aiuta SDK.
@JsonSerializable()
class AiutaFeatures {
  final AiutaWelcomeScreenFeature? welcomeScreen;
  final AiutaOnboardingFeature? onboarding;

  /// Feature for the consent screen (optional).
  /// If not provided, the consent will not be requested from the user.
  /// The consent can be embedded into the onboarding or displayed as a standalone page.
  ///
  /// To embed the consent into the onboarding, use [AiutaConsentEmbeddedIntoOnboardingFeature].
  ///
  /// To display the consent as a standalone page, use [AiutaConsentStandaloneOnboardingPageFeature]
  /// to display as the last page of the onboarding if it is enabled, or as a separate page otherwise.
  ///
  /// To display the consent as a standalone page in the bottom sheet over the image picker,
  /// when the user taps on the "Upload a photo" button, use [AiutaConsentStandaloneImagePickerPageFeature].
  final AiutaConsentFeature? consent;
  final AiutaImagePickerFeature imagePicker;
  final AiutaTryOnFeature tryOn;
  final AiutaPoweredByFeature poweredBy;
  final AiutaShareFeature? share;
  final AiutaWishlistFeature? wishlist;

  /// Creates an [AiutaFeatures] instance with the given features configurations.
  ///
  /// The [consent] describes the consent feature, which can be embedded into
  /// the onboarding pages or displayed as a standalone page.
  AiutaFeatures({
    this.welcomeScreen,
    this.onboarding,
    this.consent,
    required this.imagePicker,
    required this.tryOn,
    required this.poweredBy,
    this.share,
    this.wishlist,
  });

  // Internal json staff
  factory AiutaFeatures.fromJson(Map<String, dynamic> json) =>
      _$AiutaFeaturesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaFeaturesToJson(this);
}
