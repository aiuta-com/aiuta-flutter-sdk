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

@JsonSerializable()
class AiutaFeatures {
  final AiutaWelcomeScreenFeature? welcomeScreen;
  final AiutaOnboardingFeature? onboarding;

  final AiutaConsentFeature? consent;
  final AiutaImagePickerFeature imagePicker;
  final AiutaTryOnFeature tryOn;
  final AiutaPoweredByFeature poweredBy;
  final AiutaShareFeature? share;
  final AiutaWishlistFeature? wishlist;

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

  /// Create a new instance of AiutaFeatures from a json map.
  factory AiutaFeatures.fromJson(Map<String, dynamic> json) =>
      _$AiutaFeaturesFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaFeaturesToJson(this);
}
