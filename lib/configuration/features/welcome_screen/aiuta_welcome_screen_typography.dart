import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_welcome_screen_typography.g.dart';

/// This class represents the typography styles used in the welcome screen
/// of the Aiuta SDK.
@JsonSerializable()
class AiutaWelcomeScreenTypography {
  /// Text style for the welcome title.
  final AiutaTextStyle welcomeTitle;

  /// Text style for the welcome description.
  final AiutaTextStyle welcomeDescription;

  /// Creates an [AiutaWelcomeScreenTypography] with the given parameters for
  /// the [welcomeTitle] and [welcomeDescription] text styles.
  AiutaWelcomeScreenTypography({
    required this.welcomeTitle,
    required this.welcomeDescription,
  });

  // Internal json staff
  factory AiutaWelcomeScreenTypography.fromJson(Map<String, dynamic> json) =>
      _$AiutaWelcomeScreenTypographyFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaWelcomeScreenTypographyToJson(this);
}
