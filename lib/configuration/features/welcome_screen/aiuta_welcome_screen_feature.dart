import 'package:json_annotation/json_annotation.dart';
import 'aiuta_welcome_screen_images.dart';
import 'aiuta_welcome_screen_icons.dart';
import 'aiuta_welcome_screen_strings.dart';
import 'aiuta_welcome_screen_typography.dart';

part 'aiuta_welcome_screen_feature.g.dart';

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

  AiutaWelcomeScreenFeature({
    required this.images,
    required this.icons,
    required this.strings,
    required this.typography,
  });

  /// Create a new instance of AiutaWelcomeScreenFeature from a json map.
  factory AiutaWelcomeScreenFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaWelcomeScreenFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaWelcomeScreenFeatureToJson(this);
}
