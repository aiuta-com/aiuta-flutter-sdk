import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_welcome_screen_typography.g.dart';

@JsonSerializable()
class AiutaWelcomeScreenTypography {
  /// Text style for the welcome title.
  final AiutaTextStyle welcomeTitle;

  /// Text style for the welcome description.
  final AiutaTextStyle welcomeDescription;

  AiutaWelcomeScreenTypography({
    required this.welcomeTitle,
    required this.welcomeDescription,
  });

  /// Create a new instance of AiutaWelcomeScreenTypography from a json map.
  factory AiutaWelcomeScreenTypography.fromJson(Map<String, dynamic> json) =>
      _$AiutaWelcomeScreenTypographyFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaWelcomeScreenTypographyToJson(this);
}
