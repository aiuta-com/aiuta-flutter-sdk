import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_welcome_screen_icons.g.dart';

/// This class represents the icons used in the welcome screen of the Aiuta SDK.
@JsonSerializable()
class AiutaWelcomeScreenIcons {
  /// Icon for the welcome screen.
  final AiutaIcon welcome82;

  /// Creates an [AiutaWelcomeScreenIcons] with the given [welcome82] icon.
  AiutaWelcomeScreenIcons({
    required this.welcome82,
  });

  // Internal json staff
  factory AiutaWelcomeScreenIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaWelcomeScreenIconsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaWelcomeScreenIconsToJson(this);
}
