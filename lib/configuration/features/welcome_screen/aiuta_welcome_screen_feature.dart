import 'package:json_annotation/json_annotation.dart';
import 'aiuta_welcome_screen_images.dart';
import 'aiuta_welcome_screen_icons.dart';
import 'aiuta_welcome_screen_strings.dart';
import 'aiuta_welcome_screen_typography.dart';

part 'aiuta_welcome_screen_feature.g.dart';

/// This class represents the optional welcome screen feature for the Aiuta SDK.
/// It is used to show a welcome screen when the SDK is opened for the first time.
/// The welcome screen is shown only if the user has not completed the onboarding.
/// So it is bound to the onboarding feature. If the onboarding is not provided,
/// the welcome screen will be shown every time the SDK is opened and you
/// should care of providing or not providing the welcome screen feature in
/// the configuration to control the welcome screen visibility yourself.
@JsonSerializable()
class AiutaWelcomeScreenFeature {
  /// Images used in the welcome screen.
  final AiutaWelcomeScreenImages images;

  /// Icons used in the welcome screen.
  final AiutaWelcomeScreenIcons icons;

  /// Strings used in the welcome screen.
  final AiutaWelcomeScreenStrings strings;

  /// Typography styles used in the welcome screen.
  final AiutaWelcomeScreenTypography typography;

  /// Creates an [AiutaWelcomeScreenFeature] with the given parameters for the
  /// [images], [icons], [strings], and [typography] used in the welcome screen.
  AiutaWelcomeScreenFeature({
    required this.images,
    required this.icons,
    required this.strings,
    required this.typography,
  });

  // Internal json staff
  factory AiutaWelcomeScreenFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaWelcomeScreenFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaWelcomeScreenFeatureToJson(this);
}
